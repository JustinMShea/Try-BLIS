library(benchmarkme)

get_linear_algebra()


BLIS_zenlibFLAME <- benchmark_std()
attr(BLIS_zenlibFLAME, "BLAS") <- get_linear_algebra()
attr(BLIS_zenlibFLAME, "SystemTime") <- Sys.time()
saveRDS(BLIS_zenlibFLAME, "data/2950x/BLIS_zenlibFLAME.rds")
rm(BLIS_zenlibFLAME)
gc()


BLIS_zenlibFLAME_1 <- benchmark_std(cores = 1)
attr(BLIS_zenlibFLAME_1, "BLAS") <- get_linear_algebra()
attr(BLIS_zenlibFLAME_1, "SystemTime") <- Sys.time()
saveRDS(BLIS_zenlibFLAME_1, "data/2950x/BLIS_zenlibFLAME_1.rds")
rm(BLIS_zenlibFLAME_1)
gc()


BLIS_zenlibFLAME_4 <- benchmark_std(cores = 4)
attr(BLIS_zenlibFLAME_4, "BLAS") <- get_linear_algebra()
attr(BLIS_zenlibFLAME_4, "SystemTime") <- Sys.time()
saveRDS(BLIS_zenlibFLAME_4, "data/2950x/BLIS_zenlibFLAME_4.rds")
rm(BLIS_zenlibFLAME_4)
gc()

BLIS_zenlibFLAME_8 <- benchmark_std(cores = 8)
attr(BLIS_zenlibFLAME_8, "BLAS") <- get_linear_algebra()
attr(BLIS_zenlibFLAME_8, "SystemTime") <- Sys.time()
saveRDS(BLIS_zenlibFLAME_8, "data/2950x/BLIS_zenlibFLAME_8.rds")
rm(BLIS_zenlibFLAME_8)
gc()


BLIS_zenlibFLAME_16 <- benchmark_std(cores = 16)
attr(BLIS_zenlibFLAME_16, "BLAS") <- get_linear_algebra()
attr(BLIS_zenlibFLAME_16, "SystemTime") <- Sys.time()
saveRDS(BLIS_zenlibFLAME_16, "data/2950x/BLIS_zenlibFLAME_16.rds")
rm(BLIS_zenlibFLAME_16)
gc()
