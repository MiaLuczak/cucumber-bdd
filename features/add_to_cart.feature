Feature: Add products to cart

  Background: User is on product page

  Scenario: Add product to cart
    Given User select avaiable size and color of clothing
    When User clicks on button with shopping bag
    Then Product is added to their cart

  Scenario: Add unavaiable size to cart
    When User select unavaiable size or color of clothing
    Then Information that says: Selected size or color is unavaiable. Is showed
    And User can provide email to inform them if product restock
    But User cannot add unavaiable product to cart
