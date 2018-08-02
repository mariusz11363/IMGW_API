require("httr")
require("jsonlite")
library(RCurl)
library(curl)


get_prices_text <-  curl("https://danepubliczne.imgw.pl/api/data/synop")
get_prices_text <- readLines(get_prices_text)

get_prices_json <- fromJSON(get_prices_text, flatten = TRUE)
IMGW_aktualne <- as.data.frame(get_prices_json)
