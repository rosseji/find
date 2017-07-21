#' Finds Local path
#'
#' Queries working directory and returns tha base directory as a string.
#'
#' @name path
#' @param path Optional string input.
#' @return String
#' @importFrom magrittr %>%
#' @export

path <- function(path = NULL) {

  local_dir <- getwd() %>%
    stringr::str_split("/") %>%
    .[[1]] %>%
    .[2:3] %>%
    stringr::str_c(collapse = "/") %>%
    paste0("/", .) %>%
    dir(full.names = T)

  if (is.null(path)) {
    local_dir[which(stringr::str_detect(local_dir,"Dropbox"))]
  } else {
    paste0(local_dir[which(stringr::str_detect(local_dir,"Dropbox"))], path)
  }
}
