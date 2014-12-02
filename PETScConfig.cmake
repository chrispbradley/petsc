set (PETSC_HAVE_FORK YES)

set (PETSC_HAVE_SCHED_CPU_SET_T 1)
set (PETSC_HAVE_SYS_SYSCTL_H 1)
set (PETSC_HAVE_C2HTML YES)
#set (PETSC_HAVE_MPI_COMM_C2F YES)
set (PETSC_HAVE_MPI_COMBINER_CONTIGUOUS YES)
set (PETSC_HAVE_MPI_INIT_THREAD YES)
set (PETSC_HAVE_MPI_LONG_DOUBLE YES)
#set (PETSC_HAVE_MPI_COMM_F2C YES)
#set (PETSC_HAVE_MPI_FINT YES)
set (PETSC_HAVE_MPI_F90MODULE YES)
set (PETSC_HAVE_MPI_TYPE_GET_ENVELOPE YES)
set (PETSC_HAVE_MPI_ALLTOALLW YES)
set (PETSC_HAVE_MPI_FINALIZED YES)
#set (PETSC_HAVE_MPI_COMM_SPAWN YES)
#set (PETSC_HAVE_MPI_EXSCAN YES)
#set (PETSC_HAVE_MPI_TYPE_GET_EXTENT YES)
set (PETSC_HAVE_MPI_COMBINER_DUP YES)
set (PETSC_HAVE_MPI_WIN_CREATE YES)
#set (PETSC_HAVE_MPI_REPLACE YES)
set (PETSC_HAVE_MPI_TYPE_DUP YES)
set (PETSC_HAVE_MPIIO YES)
set (PETSC_HAVE_MPI_C_DOUBLE_COMPLEX YES)
set (PETSC_HAVE_MPI_INT64_T YES)
set (PETSC_HAVE_MPI_IN_PLACE YES)
set (PETSC_HAVE_STRCASECMP YES)
set (PETSC_HAVE_GET_NPROCS YES)
set (PETSC_HAVE_POPEN YES)
set (PETSC_HAVE_SIGSET YES)
set (PETSC_HAVE_GETWD YES)
set (PETSC_HAVE_VSNPRINTF YES)
set (PETSC_HAVE_TIMES YES)
set (PETSC_HAVE_DLSYM YES)
set (PETSC_HAVE_SNPRINTF YES)
set (PETSC_HAVE_GETHOSTBYNAME YES)
set (PETSC_HAVE_GETCWD YES)
set (PETSC_HAVE_DLERROR YES)
set (PETSC_HAVE_RAND YES)
set (PETSC_HAVE_GETTIMEOFDAY YES)
set (PETSC_HAVE_DLCLOSE YES)
set (PETSC_HAVE_UNAME YES)
set (PETSC_HAVE_GETHOSTNAME YES)
set (PETSC_HAVE_MKSTEMP YES)
set (PETSC_HAVE_SIGACTION YES)
set (PETSC_HAVE_DRAND48 YES)
set (PETSC_HAVE_MEMALIGN YES)
set (PETSC_HAVE_VA_COPY YES)
set (PETSC_HAVE_CLOCK YES)
set (PETSC_HAVE_ACCESS YES)
set (PETSC_HAVE_SIGNAL YES)
set (PETSC_HAVE_USLEEP YES)
set (PETSC_HAVE_GETRUSAGE YES)
set (PETSC_HAVE_VFPRINTF YES)
set (PETSC_HAVE_NANOSLEEP YES)
set (PETSC_HAVE_GETDOMAINNAME YES)
set (PETSC_HAVE_TIME YES)
set (PETSC_HAVE_LSEEK YES)
set (PETSC_HAVE_SOCKET YES)
set (PETSC_HAVE_SYSINFO YES)
set (PETSC_HAVE_READLINK YES)
set (PETSC_HAVE_REALPATH YES)
set (PETSC_HAVE_DLOPEN YES)
set (PETSC_HAVE_MEMMOVE YES)
set (PETSC_HAVE_GETPAGESIZE YES)
set (PETSC_HAVE_SLEEP YES)
set (PETSC_HAVE_VPRINTF YES)
set (PETSC_HAVE_BZERO YES)
set (PETSC_SIGNAL_CAST  )
set (PETSC_USE_SOCKET_VIEWER 1)
set (PETSC_USE_ISATTY YES)
set (PETSC_USE_SINGLE_LIBRARY 1)
set (PETSC_USE_INFO YES)
set (PETSC_USE_BACKWARD_LOOP 1)
set (PETSC_USE_DEBUG 1)
set (PETSC_USE_LOG YES)
set (PETSC_USE_CTABLE 1)
set (PETSC_USE_COMPLEX NO)
set (PETSC_USE_REAL_DOUBLE YES)
set (PETSC_CLANGUAGE_C YES)
set (PETSC_USING_F90 YES)
set (PETSC_USING_F2003 YES)

find_library (PETSC_DL_LIB dl HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )

#find_library (PETSC_GCC_S_LIB gcc_s HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )
#find_library (PETSC_OPA_LIB opa HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )
#find_library (PETSC_MPL_LIB mpl HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )
#find_library (PETSC_CR_LIB cr HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )
#find_library (PETSC_STDC++_LIB stdc++ HINTS   "/usr/lib/gcc/x86_64-linux-gnu/4.6" "/lib/x86_64-linux-gnu" "/usr/lib/x86_64-linux-gnu" )

#mark_as_advanced (PETSC_AMD_LIB PETSC_CAMD_LIB PETSC_CCOLAMD_LIB PETSC_BTF_LIB PETSC_KLU_LIB PETSC_COLAMD_LIB PETSC_SUITESPARSECONFIG_LIB PETSC_UMFPACK-5.7.0_LIB PETSC_CHOLMOD-3.0.1_LIB PETSC_PASTIX-5.2.2.16_LIB PETSC_PASTIX-MATRIX-DRIVER-5.2.2.16_LIB PETSC_METIS-4.0.3_LIB PETSC_MUMPS-4.10.0_LIB PETSC_SCALAPACK-2.8_LIB PETSC_SUPERLU-DIST-4.3_LIB PETSC_SUPERLU-4.3_LIB PETSC_SUNDIALS_CVODE_LIB PETSC_SUNDIALS_CVODES_LIB PETSC_SUNDIALS_FCVODE_LIB PETSC_SUNDIALS_FIDA_LIB PETSC_SUNDIALS_FKINSOL_LIB PETSC_SUNDIALS_FNVECPARALLEL_LIB PETSC_SUNDIALS_IDA_LIB PETSC_SUNDIALS_IDAS_LIB PETSC_SUNDIALS_KINSOL_LIB PETSC_SUNDIALS_NVECPARALLEL_LIB PETSC_SUNDIALS_NVECSERIAL_LIB PETSC_HYPRE-2.9.0_LIB PETSC_LAPACK_LIB PETSC_BLAS_LIB PETSC_PARMETIS_LIB PETSC_METIS-5.1_LIB PETSC_X11_LIB PETSC_SSL_LIB PETSC_CRYPTO_LIB PETSC_PTSCOTCH-6.0.3_LIB PETSC_SCOTCH-6.0.3_LIB PETSC_MPICHF90_LIB PETSC_GFORTRAN_LIB PETSC_QUADMATH_LIB PETSC_M_LIB PETSC_MPICHCXX_LIB PETSC_STDC++_LIB PETSC_MPICH_LIB PETSC_OPA_LIB PETSC_MPL_LIB PETSC_RT_LIB PETSC_CR_LIB PETSC_PTHREAD_LIB PETSC_GCC_S_LIB PETSC_DL_LIB)
set (PETSC_PACKAGE_LIBS "${PETSC_X11_LIB}" 
    "${PETSC_GFORTRAN_LIB}" "${PETSC_QUADMATH_LIB}" "${PETSC_M_LIB}" 
    "${PETSC_STDC++_LIB}" "${PETSC_OPA_LIB}" "${PETSC_MPL_LIB}" "${PETSC_CR_LIB}"
    "${PETSC_DL_LIB}")
set (PETSC_PACKAGE_INCLUDES )
