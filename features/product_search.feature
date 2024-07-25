Feature: Product search in Sinsay online store

  Background: User is on home page

  Scenario: Not logged in User search for products
    Given User is not logged in
    When User clicks on search bar
    And User starts typing
    Then Search result, that match typed characters appears
    And Search autocomplete prediction appears

  Scenario: Logged in User search for products
    Given User is logged in to their account
    When User clicks on search bar
    And User starts typing
    Then Search result, that match typed characters appears
    And Search autocomplete prediction appears
