
## read in data
benchmark_path <- paste0(getwd(),"/data/2950x/")
benchmark_files <- list.files(path = benchmark_path)

for(files in benchmark_files) {
    assign(gsub(".rds","",files), readRDS( paste0(benchmark_path, files) ))
}

## View Benchmarks
library(benchmarkme)

# First view standard BLAS/LAPACK v 3.9.0
plot(BLAS_LAPACK)
plot(BLAS_LAPACK_1)
plot(BLAS_LAPACK_4)
plot(BLAS_LAPACK_8)
plot(BLAS_LAPACK_16)

# Next openBLAS-openmp
plot(openBLAS_openmp)
plot(openBLAS_openmp_1)
plot(openBLAS_openmp_4)
plot(openBLAS_openmp_8)
plot(openBLAS_openmp_16)

# Next Zen optimized BLIS w/ libFLAME
plot(zenBLIS_libFLAME)
plot(zenBLIS_libFLAME_1)
plot(zenBLIS_libFLAME_4)
plot(zenBLIS_libFLAME_8)
plot(zenBLIS_libFLAME_16)

 
## More direct comparisons HERE

#system("update-alternatives --config liblapack.so.3-x86_64-linux-gnu")
