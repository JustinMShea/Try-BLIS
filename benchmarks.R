library(benchmarkme)

BLISZEN <- benchmark_std()
saveRDS(BLISZEN, "data/BLISZEN.rds")
rm(BLISZEN)
gc()

BLISZEN <- benchmark_std(runs = 6, cores = 1)
saveRDS(BLISZEN_1, "data/BLISZEN_1.rds")
rm(BLISZEN_1)
gc()

BLISZEN_4 <- benchmark_std(cores = 4)
saveRDS(BLISZEN_4, "data/BLISZEN_4.rds")
rm(BLISZEN_4)
gc()

BLISZEN_8 <- benchmark_std(cores = 8)
saveRDS(BLISZEN_8, "data/BLISZEN_8.rds")
rm(BLISZEN_8)
gc()

BLISZEN_16 <- benchmark_std(cores = 16)
saveRDS(BLISZEN_16, "data/BLISZEN_16.rds")
rm(BLISZEN_16)
gc()

BLISZEN_32 <- benchmark_std(cores = 32)
saveRDS(BLISZEN_32, "data/BLISZEN_32.rds")
rm(BLISZEN_32)
gc()

plot(BLISZEN, blas_optimize = NULL)
plot(BLISZEN_1, blas_optimize = NULL)
plot(BLISZEN_4, blas_optimize = NULL)
plot(BLISZEN_8, blas_optimize = NULL)
plot(BLISZEN_16, blas_optimize = NULL)
plot(BLISZEN_32, blas_optimize = NULL)

sum(BLIS_8[BLIS_8$test_group=="matrix_fun","elapsed"])/3
sum(BLISZEN_8[BLISZEN_8$test_group=="matrix_fun","elapsed"])/3
sum(BLIS_32[BLIS_32$test_group=="matrix_fun","elapsed"])/3

sum(BLIS_16[BLIS_16$test_group=="matrix_fun","elapsed"])/3
sum(BLISZEN_16[BLISZEN_16$test_group=="matrix_fun","elapsed"])/3

sum(BLIS_32[BLIS_32$test_group=="matrix_fun","elapsed"])/3
sum(BLISZEN_32[BLISZEN_32$test_group=="matrix_fun","elapsed"])/3
