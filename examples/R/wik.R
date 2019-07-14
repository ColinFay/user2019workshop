wikipedia_lookup <- function(){
  rstudioapi::verifyAvailable()
  if (rstudioapi::hasFun("getActiveDocumentContext")){
    x <- rstudioapi::getActiveDocumentContext()
    browseURL(
      sprintf(
        "https://en.wikipedia.org/wiki/%s",
        x$selection[[1]]$text
      )
    )
  }
}
