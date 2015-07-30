##' Fixup the whitespace in the text columns of the CSV data
##'
##' @title whitespace_fix
##' @param the_data the dataframe containing the CSV data
##' @return the cleaned up dataframe
##' @author James E. Marca
##'
whitespace_fix <- function(the_data){
    ## chomp whitespace
    the_data$Value_Text <- stringr::str_trim(the_data$Value_Text,side='both')
    the_data$Comments <- stringr::str_trim(the_data$Comments,side='both')

    ## fix whitespace issues between words by splitting on whitespace
    ## and recombining so for example, 'CHARTER   WAY/MLK JR    BLVD'
    ## becomes 'CHARTER WAY/MLK JR BLVD'

    the_data$Value_Text <- stringr::str_replace_all(the_data$Value_Text,"\\s+"," ")
    the_data$Comments <- stringr::str_replace_all(the_data$Comments,"\\s+"," ")
    the_data
}
