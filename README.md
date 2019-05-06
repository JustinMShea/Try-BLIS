# Try BLIS

In continued pursuit of high performance local computing, I recently built a desktop powered by the [AMD Ryzen™ Threadripper™ 1950X 16-Core Processor](https://www.amd.com/en/products/cpu/amd-ryzen-threadripper-1950x). For details, I gave a talk on building the machine [earlier this year](https://github.com/JustinMShea/hardware-for-data-science). Using the [benchmarkme package](https://github.com/csgillespie/benchmarkme), I found performance to be excellent on several benchmark categories, except for that of running linear algebra functions in parallel, which were severely lagging. This was very disappointing, considering the entire purpose of the build is to leverage the Threadripper's multiple core architecture to reduce statistical and machine learning modeling time on larger data sets.

Researching various [`BLAS`](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#BLAS) libraries led me to [`BLIS`](https://github.com/flame/blis/) and [`libFLAME`](https://github.com/flame/libflame/) high performance dense linear algebra libraries, each addressing an important layer in the linear algebra software stack. These are part of the [`FLAME` Project]( https://www.cs.utexas.edu/~flame/web/), primarily developed and maintained by individuals in [The Science of High-Performance Computing (SHPC) Group](http://shpc.ices.utexas.edu/software.html) in the Institute for Computational Engineering and Sciences at The University of Texas at Austin. 

Benchmark results show a large performance increase when substituting `BLIS` for `BLAS` and `libFLAME` for `LAPACK`.


## Options to view slides

- Presentation html [slides here](https://raw.githack.com/JustinMShea/Try-BLIS/master/slides/Try-BLIS.html#1).

- Presentation was in html, but pdf is available in the [slides folder](https://rawcdn.githack.com/JustinMShea/Try-BLIS/9a6d8d6219305b7715b4941fa07f98e52f5d7cfa/slides/Try-BLIS.html)

- Clone or download this repo and render the `slides/Try-BLIS.Rmd` file locally. 

This was was part of [Session 3 on Statistical Methods](https://github.com/satRdays/chicago2019-slides#session-3-statistical-methods), and was unfortunately not recorded.  
To see other talks from the event, check out the [Sat`R`day Chicago Github repo here](https://github.com/satRdays/chicago2019-slides). 