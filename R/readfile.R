##' Read file
##'
##' A super thin wrapper around readr::read_csv
##'
##' @title read_file
##' @param filename the filename of the CSV file to read
##' @return a data frame
##' @author James E. Marca
##'
read_file <- function(filename){
    the_data <- readr::read_csv(filename)
    the_data
}
