Feature: List of Products
  As an API consumer
  I want to list do a get method 
  So that I can make my shopping list.

  Scenario: I should be able to list all products
    When I GET /echo
    Then response code should be 200
    And response body path $.products should be of type array with length 9

   Scenario: I should be able to identify a product by its ID
    When I GET /echo/?apikey9SIQT8TOJO
    Then response code should be 200
    And response body path $.name should be City Bike

  Scenario: I should receive a 404 error for non-existing codes
    When I GET /other/XYZ
    Then response code should be 404