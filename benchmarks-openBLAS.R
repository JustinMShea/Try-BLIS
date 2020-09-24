library(benchmarkme)

get_linear_algebra()


openBLAS_openmp <- benchmark_std()
attr(openBLAS_openmp, "BLAS") <- get_linear_algebra()
attr(openBLAS_openmp, "SystemTime") <- Sys.time()
saveRDS(openBLAS_openmp, "data/2950x/openBLAS_openmp.rds")
rm(openBLAS_openmp)
gc()

Sys.sleep(60)

openBLAS_openmp_1 <- benchmark_std(cores = 1)
attr(openBLAS_openmp_1, "BLAS") <- get_linear_algebra()
attr(openBLAS_openmp_1, "SystemTime") <- Sys.time()
saveRDS(openBLAS_openmp_1, "data/2950x/openBLAS_openmp_1.rds")
rm(openBLAS_openmp_1)
gc()

Sys.sleep(60)

openBLAS_openmp_4 <- benchmark_std(cores = 4)
attr(openBLAS_openmp_4, "BLAS") <- get_linear_algebra()
attr(openBLAS_openmp_4, "SystemTime") <- Sys.time()
saveRDS(openBLAS_openmp_4, "data/2950x/openBLAS_openmp_4.rds")
rm(openBLAS_openmp_4)
gc()

Sys.sleep(60)

openBLAS_openmp_8 <- benchmark_std(cores = 8)
attr(openBLAS_openmp_8, "BLAS") <- get_linear_algebra()
attr(openBLAS_openmp_8, "SystemTime") <- Sys.time()
saveRDS(openBLAS_openmp_8, "data/2950x/openBLAS_openmp_8.rds")
rm(openBLAS_openmp_8)
gc()

Sys.sleep(60)

openBLAS_openmp_16 <- benchmark_std(cores = 16)
attr(openBLAS_openmp_16, "BLAS") <- get_linear_algebra()
attr(openBLAS_openmp_16, "SystemTime") <- Sys.time()
saveRDS(openBLAS_openmp_16, "data/2950x/openBLAS_openmp_16.rds")
rm(openBLAS_openmp_16)
gc()
