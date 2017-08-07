#' Finds Local path
#'
#' Queries working directory and returns tha base directory as a string.
#'
#' @name this
#' @param path Optional string input.
#' @return String
#' @importFrom magrittr %>%
#' @export

this <- function(path = NULL) {

   getwd() %>%
    stringr::str_split("/") %>%
    .[[1]] %>%
    .[2:3] %>%
    stringr::str_c(collapse = "/") %>%
    paste0("/", ., path)

}
