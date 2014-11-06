#include "petscsys.h"
#include "petscfix.h"
#include "petsc-private/fortranimpl.h"
/* gcreate.c */
/* Fortran interface file */

/*
* This file was generated automatically by bfort from the C source
* file.  
 */

#ifdef PETSC_USE_POINTER_CONVERSION
#if defined(__cplusplus)
extern "C" { 
#endif 
extern void *PetscToPointer(void*);
extern int PetscFromPointer(void *);
extern void PetscRmPointer(void*);
#if defined(__cplusplus)
} 
#endif 

#else

#define PetscToPointer(a) (*(PetscFortranAddr *)(a))
#define PetscFromPointer(a) (PetscFortranAddr)(a)
#define PetscRmPointer(a)
#endif

#include "petscmat.h"
#ifdef PETSC_HAVE_FORTRAN_CAPS
#define matcreate_ MATCREATE
#elif !defined(PETSC_HAVE_FORTRAN_UNDERSCORE) && !defined(FORTRANDOUBLEUNDERSCORE)
#define matcreate_ matcreate
#endif
#ifdef PETSC_HAVE_FORTRAN_CAPS
#define matsetsizes_ MATSETSIZES
#elif !defined(PETSC_HAVE_FORTRAN_UNDERSCORE) && !defined(FORTRANDOUBLEUNDERSCORE)
#define matsetsizes_ matsetsizes
#endif
#ifdef PETSC_HAVE_FORTRAN_CAPS
#define matsetfromoptions_ MATSETFROMOPTIONS
#elif !defined(PETSC_HAVE_FORTRAN_UNDERSCORE) && !defined(FORTRANDOUBLEUNDERSCORE)
#define matsetfromoptions_ matsetfromoptions
#endif
#ifdef PETSC_HAVE_FORTRAN_CAPS
#define matxaijsetpreallocation_ MATXAIJSETPREALLOCATION
#elif !defined(PETSC_HAVE_FORTRAN_UNDERSCORE) && !defined(FORTRANDOUBLEUNDERSCORE)
#define matxaijsetpreallocation_ matxaijsetpreallocation
#endif


/* Definitions of Fortran Wrapper routines */
#if defined(__cplusplus)
extern "C" {
#endif
PETSC_EXTERN void PETSC_STDCALL  matcreate_(MPI_Fint * comm,Mat *A, int *__ierr ){
*__ierr = MatCreate(
	MPI_Comm_f2c( *(comm) ),A);
}
PETSC_EXTERN void PETSC_STDCALL  matsetsizes_(Mat A,PetscInt *m,PetscInt *n,PetscInt *M,PetscInt *N, int *__ierr ){
*__ierr = MatSetSizes(
	(Mat)PetscToPointer((A) ),*m,*n,*M,*N);
}
PETSC_EXTERN void PETSC_STDCALL  matsetfromoptions_(Mat B, int *__ierr ){
*__ierr = MatSetFromOptions(
	(Mat)PetscToPointer((B) ));
}
PETSC_EXTERN void PETSC_STDCALL  matxaijsetpreallocation_(Mat A,PetscInt *bs, PetscInt dnnz[], PetscInt onnz[], PetscInt dnnzu[], PetscInt onnzu[], int *__ierr ){
*__ierr = MatXAIJSetPreallocation(
	(Mat)PetscToPointer((A) ),*bs,dnnz,onnz,dnnzu,onnzu);
}
#if defined(__cplusplus)
}
#endif
