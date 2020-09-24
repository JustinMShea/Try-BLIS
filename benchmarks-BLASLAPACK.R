library(benchmarkme)

get_linear_algebra()

BLAS_LAPACK <- benchmark_std()
attr(BLAS_LAPACK, "BLAS") <- get_linear_algebra()
attr(BLAS_LAPACK, "SystemTime") <- Sys.time()
saveRDS(BLAS_LAPACK, "data/2950x/BLAS_LAPACK.rds")
rm(BLAS_LAPACK)
gc()

Sys.sleep(60)

BLAS_LAPACK_1 <- benchmark_std(runs = 6, cores = 1)
attr(BLAS_LAPACK_1, "BLAS") <- get_linear_algebra()
attr(BLAS_LAPACK_1, "SystemTime") <- Sys.time()
saveRDS(BLAS_LAPACK_1, "data/2950x/BLAS_LAPACK_1.rds")
rm(BLAS_LAPACK_1)
gc()

Sys.sleep(60)

BLAS_LAPACK_4 <- benchmark_std(cores = 4)
attr(BLAS_LAPACK_4, "BLAS") <- get_linear_algebra()
attr(BLAS_LAPACK_4, "SystemTime") <- Sys.time()
saveRDS(BLAS_LAPACK_4, "data/2950x/BLAS_LAPACK_4.rds")
rm(BLAS_LAPACK_4)
gc()

Sys.sleep(60)

BLAS_LAPACK_8 <- benchmark_std(cores = 8)
attr(BLAS_LAPACK_8, "BLAS") <- get_linear_algebra()
attr(BLAS_LAPACK_8, "SystemTime") <- Sys.time()
saveRDS(BLAS_LAPACK_8, "data/2950x/BLAS_LAPACK_8.rds")
rm(BLAS_LAPACK_8)
gc()

Sys.sleep(60)

BLAS_LAPACK_16 <- benchmark_std(cores = 16)
attr(BLAS_LAPACK_16, "BLAS") <- get_linear_algebra()
attr(BLAS_LAPACK_16, "SystemTime") <- Sys.time()
saveRDS(BLAS_LAPACK_16, "data/2950x/BLAS_LAPACK_16.rds")
rm(BLAS_LAPACK_16)
gc()

# system("update-alternatives --config liblapack.so.3-x86_64-linux-gnu")
