library(benchmarkme)

get_linear_algebra()


zenBLIS_libFLAME <- benchmark_std()
attr(zenBLIS_libFLAME, "BLAS") <- get_linear_algebra()
attr(zenBLIS_libFLAME, "SystemTime") <- Sys.time()
saveRDS(zenBLIS_libFLAME, "data/2950x/zenBLIS_libFLAME.rds")
rm(zenBLIS_libFLAME)
gc()


zenBLIS_libFLAME_1 <- benchmark_std(cores = 1)
attr(zenBLIS_libFLAME_1, "BLAS") <- get_linear_algebra()
attr(zenBLIS_libFLAME_1, "SystemTime") <- Sys.time()
saveRDS(zenBLIS_libFLAME_1, "data/2950x/zenBLIS_libFLAME_1.rds")
rm(zenBLIS_libFLAME_1)
gc()


zenBLIS_libFLAME_4 <- benchmark_std(cores = 4)
attr(zenBLIS_libFLAME_4, "BLAS") <- get_linear_algebra()
attr(zenBLIS_libFLAME_4, "SystemTime") <- Sys.time()
saveRDS(zenBLIS_libFLAME_4, "data/2950x/zenBLIS_libFLAME_4.rds")
rm(zenBLIS_libFLAME_4)
gc()

zenBLIS_libFLAME_8 <- benchmark_std(cores = 8)
attr(zenBLIS_libFLAME_8, "BLAS") <- get_linear_algebra()
attr(zenBLIS_libFLAME_8, "SystemTime") <- Sys.time()
saveRDS(zenBLIS_libFLAME_8, "data/2950x/zenBLIS_libFLAME_8.rds")
rm(zenBLIS_libFLAME_8)
gc()


zenBLIS_libFLAME_16 <- benchmark_std(cores = 16)
attr(zenBLIS_libFLAME_16, "BLAS") <- get_linear_algebra()
attr(zenBLIS_libFLAME_16, "SystemTime") <- Sys.time()
saveRDS(zenBLIS_libFLAME_16, "data/2950x/zenBLIS_libFLAME_16.rds")
rm(zenBLIS_libFLAME_16)
gc()
