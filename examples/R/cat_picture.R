insert_cat <- function(){
  rstudioapi::verifyAvailable()
  if (
    rstudioapi::hasFun("getActiveDocumentContext") &
    rstudioapi::hasFun("insertText")
  ){
    x <- rstudioapi::getActiveDocumentContext()
    pic <- jsonlite::read_json("https://api.thecatapi.com/v1/images/search")
    rstudioapi::insertText(
      location = s$range,
      text = sprintf(
        "![](%s)",
        pic[[1]]$url
      )
    )
  }
}
