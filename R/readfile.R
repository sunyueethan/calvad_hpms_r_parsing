##' Read file
##'
##' A super thin wrapper around readr::read_csv
##'
##' @title read_file
##' @param filename the filename of the CSV file to read
##' @return a data frame
##' @author James E. Marca
##'
read_file <- function(filename, list){
    the_data <- readr::read_csv(filename,col_types = list)
    the_data
}

## Ethan add clo_types in the function avoid some errors. Because for the data of 2011, the Route_ID column can't load correctly.
