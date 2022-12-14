#' Speaking whale
#'
#' @param what What the whale will say. If empty defaults to generic whale comment.
#'
#' @return Whale message to the console
#' @export
#'
#' @examples say('Well head')

say <- function(what){
  #Defining the whale ASCII
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"

  #If what isn't supplied...
  if(missing(what)){
    what <- phrases %>% sample(size = 1)
  }

  #Combining message and whale together with sprintf ("%s" in the whale ASCII is replaced by "what")
  out <- sprintf(whale, #Speech bubble
                 what) #User specified message

  #Return whale message
  message(out)
}
