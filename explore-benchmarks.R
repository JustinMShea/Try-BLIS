
plot(BLAS_LAPACK, blas_optimize = NULL)
plot(BLAS_LAPACK_1, blas_optimize = NULL)
plot(BLAS_LAPACK_2, blas_optimize = NULL)
plot(BLAS_LAPACK_4, blas_optimize = NULL)
plot(BLAS_LAPACK_8, blas_optimize = NULL)
plot(BLAS_LAPACK_16, blas_optimize = NULL)


plot(AMD_BLIS_libFLAME, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_1, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_2, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_4, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_8, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_16, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_32, blas_optimize = NULL)

 
sum(AMD_BLIS_libFLAME_8[AMD_BLIS_libFLAME_8$test_group=="matrix_fun","elapsed"])/3
 

 
sum(AMD_BLIS_libFLAME_16[AMD_BLIS_libFLAME_16$test_group=="matrix_fun","elapsed"])/3

sum(BLIS_32[BLIS_32$test_group=="matrix_fun","elapsed"])/3
sum(AMD_BLIS_libFLAME_32[AMD_BLIS_libFLAME_32$test_group=="matrix_fun","elapsed"])/3

system("update-alternatives --config liblapack.so.3-x86_64-linux-gnu")
sum(BLAS_LAPACK_8[BLAS_LAPACK_8$test_group=="matrix_fun","elapsed"])/3
sum(BLAS_LAPACK_16[BLAS_LAPACK_16$test_group=="matrix_fun","elapsed"])/3
sum(BLAS_LAPACK_32[BLAS_LAPACK_32$test_group=="matrix_fun","elapsed"])/3

