Feature: Purchasing products

  Background: User is on their cart page

  Scenario: Applay discount to their cart
    Given User have valid discount code
    When User type their code in dicount code input
    And User clicks on 'Applay' button
    Then Discount is applayed to each product that discount applays


  Scenario: Purchasing products from cart, Logged in user
    Given User have products in cart
    When Clicks on 'Go to Checkout' button
    Then User have autocomplete shippment and buyers data from their account
    And Redirect to payment gate, according to payment method

  Scenario: Purchasing products from cart, Not logged in user
    Given User have products in cart
    When Clicks on 'Go to Checkout' button
    Then User have to fillout buyers and shippment information form
    And Redirect to payment gate, according to payment method

  Scenario: User purchased products, transaction completed succesfully
    Given User have paid for their products
    When Payment gate, validate transaction
    Then Thanks page is shown, with list of their bought products

  Scenario: User purchased products, transaction failed
    Given User have been in payment gate
    When Payment gate, returns that transaction failed
    Then Information is shown, with instruction how to complete payment
    But If user don't complete the transaction in given time, purchase is canceled