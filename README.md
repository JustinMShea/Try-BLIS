# Try-BLIS

This repo contains data, images, and files for building the slides from my talk at [Sat`R`day Chicago](https://chicago2019.satrdays.org/) 2019-04-27. 

## Abstract

In continued pursuit of high performance local computing, I recently built a desktop powered by the [AMD Ryzen™ Threadripper™ 1950X 16-Core Processor](https://www.amd.com/en/products/cpu/amd-ryzen-threadripper-1950x). However, when testing [the final build](https://github.com/JustinMShea/hardware-for-data-science), I found performance on running linear algebra functions in parrallel to be lagging with [base `R` `BLAS`](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#BLAS). Poking around the internet and researching various BLAS libraries led me to `BLIS` and `libFLAME` high performance dense linear algebra libraries, each addressing an important layer in the linear algebra software stack. These are part of the [`FLAME` Project]( https://www.cs.utexas.edu/~flame/web/), primarily developed and maintained by individuals in the Science of High-Performance Computing (SHPC) group in the Institute for Computational Engineering and Sciences at The University of Texas at Austin. Benchmark results show a large performance increase when substituting out `BLiS` for `BLAS` and `libFLAME` for `LAPACK`.




## Options to view slides

- Download this repo and render the .Rmd in the slides folder locally. 

- Download this repo and open the `Try-BLIS.html` with a browser.

- Presenation was in html, but pdf is available in the [slides folder](https://github.com/JustinMShea/Try-BLIS/blob/master/slides/Try-BLIS.pdf)

This was was part of [Session 3 on Statistical Methods](https://github.com/satRdays/chicago2019-slides#session-3-statistical-methods), and was unfortunatly not recorded.  
To see other talks from the event, check out the [Sat`R`day Chicago Github repo here](https://github.com/satRdays/chicago2019-slides). 