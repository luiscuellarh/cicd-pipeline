Feature: List of Products
  As an API consumer
  I want to list all Hipster Products 
  So that I can make my shopping list.

  Scenario: I should be able to list all products
    When I GET /products
    Then response code should be 503

   Scenario: I should be able to identify a product by its ID
    When I GET /products/9SIQT8TOJO
    Then response code should be 503

  Scenario: I should receive a 404 error for non-existing codes
    When I GET /products/XYZ
    Then response code should be 503