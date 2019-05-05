library(benchmarkme)

BLIS <- benchmark_std()
plot(BLIS, blas_optimize = TRUE)
saveRDS(BLIS, "data/BLIS.rds")
rm(BLIS)
gc()

BLIS_1 <- benchmark_std(runs = 6, cores = 1)
plot(BLIS_1, blas_optimize = NULL)
saveRDS(BLIS_1, "data/BLIS_1.rds")
rm(BLIS_1)
gc()

BLIS_4 <- benchmark_std(cores = 4)
plot(BLIS_4, blas_optimize = NULL)
saveRDS(BLIS_4, "data/BLIS_4.rds")
rm(BLIS_4)
gc()

BLIS_8 <- benchmark_std(cores = 8)
plot(BLIS_8, blas_optimize = NULL)
saveRDS(BLIS_8, "data/BLIS_8.rds")
rm(BLIS_8)
gc()

BLIS_16 <- benchmark_std(cores = 16)
plot(BLIS_16, blas_optimize = NULL)
saveRDS(BLIS_16, "data/BLIS_16.rds")
rm(BLIS_16)
gc()

BLIS_32 <- benchmark_std(cores = 32)
plot(BLIS_32, blas_optimize = NULL)
saveRDS(BLIS_32, "data/BLIS_32.rds")
rm(BLIS_32)
gc()


