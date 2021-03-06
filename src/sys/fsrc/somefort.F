!
!
!     Utility routine used to set constants into the
!     PETSc Fortran common block
!

      subroutine PetscSetCommonBlock(c1,c2)
      implicit none

#include      <petsc/finclude/petscsys.h>

      integer c1,c2

      PETSC_COMM_WORLD    = c1
      PETSC_COMM_SELF     = c2

      call PetscSetFortranBasePointers(PETSC_NULL_CHARACTER,            &
     &     PETSC_NULL_INTEGER,PETSC_NULL_SCALAR,                        &
     &     PETSC_NULL_DOUBLE,PETSC_NULL_REAL,PETSC_NULL_OBJECT,         &
     &     PETSC_NULL_BOOL,PETSC_NULL_FUNCTION)

      return
      end

      subroutine PetscGetCommonCOMM(c1)
      implicit none
#include      <petsc/finclude/petscsys.h>
      integer c1

      c1 = PETSC_COMM_WORLD
      return
      end

#if defined(PETSC_USE_REAL___FLOAT128)
      subroutine PetscSetCommonBlockMPI(freal,fscalar,fsum)
      implicit none

#include      <petsc/finclude/petscsys.h>

      integer freal,fscalar,fsum

      MPIU_REAL   = freal
      MPIU_SCALAR = fscalar
      MPIU_SUM    = fsum
      return
      end
#endif

      subroutine PetscSetCommonBlockNumeric(pi,maxreal,minreal,eps,seps,    &
     &                     small,pinf,pninf)
      implicit none

#include      <petsc/finclude/petscsys.h>

      PetscReal pi,maxreal,minreal,eps,seps
      PetscReal small,pinf,pninf

      PETSC_PI = pi
      PETSC_MAX_REAL = maxreal
      PETSC_MIN_REAL = minreal
      PETSC_MACHINE_EPSILON = eps
      PETSC_SQRT_MACHINE_EPSILON = seps
      PETSC_SMALL = small
      PETSC_INFINITY = pinf
      PETSC_NINFINITY = pninf

      return
      end


      block data PetscCommInit
      implicit none
!
!     this code is duplicated - because including petsc/finclude/petscsys.h here
!     gives compile errors.
!
      MPI_Comm PETSC_COMM_WORLD
      MPI_Comm PETSC_COMM_SELF
      common /petscfortran9/ PETSC_COMM_WORLD
      common /petscfortran10/ PETSC_COMM_SELF
      data   PETSC_COMM_WORLD /0/
      data   PETSC_COMM_SELF /0/
      end
