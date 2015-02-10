Feature: Search for the product

  Scenario: Search for product add to basket

  Given When I search for "chromecast"
  When the search results are displayed
  Then the first result has the word "chromecast" in it


