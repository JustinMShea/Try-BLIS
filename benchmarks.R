library(benchmarkme)

get_linear_algebra()

AMD_BLIS_libFLAME <- benchmark_std()
saveRDS(AMD_BLIS_libFLAME, "data/AMD_BLIS_libFLAME.rds")
rm(AMD_BLIS_libFLAME)
gc()


AMD_BLIS_libFLAME_1 <- benchmark_std(runs = 6, cores = 1)
saveRDS(AMD_BLIS_libFLAME_1, "data/AMD_BLIS_libFLAME_1.rds")
rm(AMD_BLIS_libFLAME_1)
gc()

AMD_BLIS_libFLAME_2 <- benchmark_std()
saveRDS(AMD_BLIS_libFLAME_2, "data/AMD_BLIS_libFLAME_2.rds")
rm(AMD_BLIS_libFLAME_2)
gc()


AMD_BLIS_libFLAME_4 <- benchmark_std(cores = 4)
saveRDS(AMD_BLIS_libFLAME_4, "data/AMD_BLIS_libFLAME_4.rds")
rm(AMD_BLIS_libFLAME_4)
gc()

AMD_BLIS_libFLAME_8 <- benchmark_std(cores = 8)
saveRDS(AMD_BLIS_libFLAME_8, "data/AMD_BLIS_libFLAME_8.rds")
rm(AMD_BLIS_libFLAME_8)
gc()


AMD_BLIS_libFLAME_16 <- benchmark_std(cores = 16)
saveRDS(AMD_BLIS_libFLAME_16, "data/AMD_BLIS_libFLAME_16.rds")
rm(AMD_BLIS_libFLAME_16)
gc()

AMD_BLIS_libFLAME_32 <- benchmark_std(cores = 32)
saveRDS(AMD_BLIS_libFLAME_32, "data/AMD_BLIS_libFLAME_32.rds")
rm(AMD_BLIS_libFLAME_32)
gc()

plot(AMD_BLIS_libFLAME, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_1, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_2, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_4, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_8, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_16, blas_optimize = NULL)
plot(AMD_BLIS_libFLAME_32, blas_optimize = NULL)

sum(BLIS_8[BLIS_8$test_group=="matrix_fun","elapsed"])/3
sum(AMD_BLIS_libFLAME_8[AMD_BLIS_libFLAME_8$test_group=="matrix_fun","elapsed"])/3
sum(BLIS_32[BLIS_32$test_group=="matrix_fun","elapsed"])/3

sum(BLIS_16[BLIS_16$test_group=="matrix_fun","elapsed"])/3
sum(AMD_BLIS_libFLAME_16[AMD_BLIS_libFLAME_16$test_group=="matrix_fun","elapsed"])/3

sum(BLIS_32[BLIS_32$test_group=="matrix_fun","elapsed"])/3
sum(AMD_BLIS_libFLAME_32[AMD_BLIS_libFLAME_32$test_group=="matrix_fun","elapsed"])/3
