

test_that("Test that data can be scraped", {
  
  skip_if_offline("www.google.com")
  
  # if (have_connection) {
  
  sample_return <- 
    db_scrape_stop_route_info(7582) # Dame Street, Central Bank (Busy stop with 24hr bus services)
  
  if (sample_return$errorcode == 0)
    expect_equal(names(sample_return), c("results", "errorcode"))
  
  expect_equal(db_scrape_stop_route_info("afga"),
               list(errorcode = 1, errormessage = "No results found"))
  
  # } else{
  #   expect_error(db_scrape_stop_route_info(7582))
  # }
  
  
})


