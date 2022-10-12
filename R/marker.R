#' Mark a submission
#'
#' @param valid list of valid answers
#' @param submission valid submission
#'
#' @return Prints True or False to the console
#' @export
#'
#' @examples marker('a', letters)
#'
marker <- function(submission, valid){

  # Check that
  if(all(submission %in% valid))(

    return('True!')

  )

  else(
    return('False!')
  )

}
