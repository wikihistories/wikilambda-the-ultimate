# Get JSON of the Integer Addition function
addition_zid <- "Z16693"

wikilambda_addition <- httr2::request("https://www.wikifunctions.org/w/api.php") |> 
  httr2::req_url_query(
    action = "wikilambda_fetch",
    zids = addition_zid,
    format = "json",
    language = "en"
  ) |> 
  httr2::req_perform() |> 
  httr2::resp_body_json() |>  
  purrr::pluck(addition_zid, "wikilambda_fetch") |> 
  jsonlite::parse_json()
