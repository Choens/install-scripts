## R Kernel:
## https://github.com/IRkernel/IRkernel
## Getting the R Kernel installed is a little funky.
## From within R
install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
