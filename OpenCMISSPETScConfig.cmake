# Init with whatever else configuration is provided by PETSc config run
include (${CMAKE_CURRENT_LIST_DIR}/PETScConfig.cmake)

# Fixed settings
SET(PETSC_HAVE_FORTRAN YES)
# This should contain quadmath, m, gfortran
LIST(APPEND PETSC_PACKAGE_LIBS ${CMAKE_Fortran_IMPLICIT_LIBRARIES})
SET(PETSC_HAVE_CXX YES)
SET(PETSC_USE_SINGLE_LIBRARY 1)
SET(BUILD_SHARED_LIBS NO)

# MPI
set(PETSC_HAVE_MPI YES)
set(CMAKE_C_COMPILER ${MPI_C_COMPILER})
set(CMAKE_Fortran_COMPILER ${MPI_Fortran_COMPILER})
set(CMAKE_CXX_COMPILER ${MPI_CXX_COMPILER})
#LIST(APPEND PETSC_PACKAGE_INCLUDES ${MPI_C_INCLUDE_PATH} ${MPI_Fortran_INCLUDE_PATH})
#LIST(APPEND PETSC_PACKAGE_LIBS ${MPI_C_LIBRARIES} ${MPI_CXX_LIBRARIES} ${MPI_Fortran_LIBRARIES})

find_package(BLAS ${BLAS_VERSION} REQUIRED)
find_package(LAPACK ${LAPACK_VERSION} REQUIRED)
SET(PETSC_HAVE_BLASLAPACK YES)

macro(ADD_CONFIG_DEF PACKAGE)
    LIST(APPEND PETSCCONF_HAVE_FLAGS "#ifndef PETSC_HAVE_${PACKAGE}\n#define PETSC_HAVE_${PACKAGE} 1\n#endif\n\n")
endmacro()

# Valgrind - Linux only
if (UNIX)
    find_package(VALGRIND QUIET)
    if (VALGRIND_FOUND)
        message(STATUS "Found Valgrind: ${VALGRIND_INCLUDE_DIR}")
        SET(PETSC_HAVE_VALGRIND YES)
        ADD_CONFIG_DEF(VALGRIND)
        LIST(APPEND PETSC_PACKAGE_INCLUDES ${VALGRIND_INCLUDE_DIR})
    endif()  
endif()
# Sowing: Only for docs creation. Not needed with dependencies
set (PETSC_HAVE_SOWING NO)

# Define list of all external packages and their targets (=libraries)
SET(ALLEXT PASTIX MUMPS SUITESPARSE SCALAPACK PTSCOTCH
    SUPERLU SUNDIALS HYPRE SUPERLU_DIST PARMETIS)
SET(PARMETIS_TARGETS parmetis metis)
SET(PTSCOTCH_TARGETS scotch ptscotch esmumps ptesmumps)
SET(SUITESPARSE_TARGETS suitesparseconfig amd btf camd cholmod colamd ccolamd klu umfpack)
SET(PASTIX_TARGETS pastix)
SET(SCALAPACK_TARGETS scalapack)
SET(MUMPS_TARGETS dmumps mumps_common pord) #smumps
SET(SUPERLU_DIST_TARGETS superlu_dist)
SET(SUPERLU_TARGETS superlu)
SET(SUNDIALS_TARGETS sundials_cvode sundials_fcvode sundials_cvodes
    sundials_ida sundials_fida sundials_idas
    sundials_kinsol sundials_fkinsol
    sundials_nvecparallel sundials_nvecserial
    )
SET(HYPRE_TARGETS hypre)

SET(PETSCCONF_HAVE_FLAGS )
SET(PETSC_CONFIGINFO_STRING )
foreach(PACKAGE ${ALLEXT})
    # Define the option
    option(USE_${PACKAGE} "Build PETSc with ${PACKAGE}" ON)
    
    # See if we want to use it
    if (USE_${PACKAGE})
        find_package(${PACKAGE} ${${PACKAGE}_VERSION} QUIET)
        if (${PACKAGE}_FOUND)
            message(STATUS "Building PETSC with ${PACKAGE}...")
            # Set the petsc-have flag
            SET(PETSC_HAVE_${PACKAGE} YES)
            # Add targets to link targets list
            LIST(APPEND PETSC_PACKAGE_LIBS ${${PACKAGE}_TARGETS})
        endif()
    endif()
    LIST(APPEND PETSC_PACKAGE_LIBS ${MPI_C_LIBRARIES} ${MPI_Fortran_LIBRARIES})
    
    # If found, add definitions to header and information files
    if (PETSC_HAVE_${PACKAGE})
        # petscconfig.h
        ADD_CONFIG_DEF(${PACKAGE})
        
        # petscconfiginfo.h
        STRING(TOLOWER ${PACKAGE} pkgname)
        SET(INCLUDES )
        SET(LIBRARIES )
        foreach(TARGET ${${PACKAGE}_TARGETS})
            get_target_property(INCDIR ${TARGET} INTERFACE_INCLUDE_DIRECTORIES)
            LIST(APPEND INCLUDES ${INCDIR})
            get_target_property(TARGET_FILE ${TARGET} LOCATION)
            LIST(APPEND LIBRARIES ${TARGET_FILE})
        endforeach()
        STRING(REPLACE ";" "," LIBRARIES "${LIBRARIES}")
        STRING(REPLACE ";" "," INCLUDES "${INCLUDES}")
        LIST(APPEND PETSC_CONFIGINFO_STRING "--with-${pkgname}=1 --with-${pkgname}-lib=[${LIBRARIES}] --with-${pkgname}-include=[${INCLUDES}]")
    endif()
endforeach()

# SSL support
find_package(OpenSSL QUIET)
if (OPENSSL_FOUND)
    message(STATUS "Building PETSc with OpenSSL ${OPENSSL_VERSION}")
    LIST(APPEND PETSC_PACKAGE_LIBS ${OPENSSL_LIBRARIES})
    SET(PETSC_HAVE_SSL 1)
endif()

# OpenMP
if (WITH_OPENMP)
  find_package(OpenMP)
  if (OPENMP_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${OpenMP_Fortran_FLAGS}")
    SET(PETSC_HAVE_OPENMP 1)
  else()
    SET(PETSC_HAVE_OPENMP FALSE)
  endif()
endif()