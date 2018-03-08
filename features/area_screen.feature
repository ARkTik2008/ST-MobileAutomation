@area
Feature: User is able to convert area units
  @menu
  Scenario: User is able to dismiss help
    Given I land on help popup
    When I click on Got it button
    Then I land on Area screen
  @wip
  Scenario:  User is able to swap values
    When I click on Got it button
    And I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap Button
    Then I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header


  Scenario Outline: User is able to convert default units
    Given I click on Got it button
    And I click on Clear button
    When I enter "<target>" to From field
    Then I get "<result>" in To field
    Examples:
      |target|result|
      |1     |1000000|
      |2     |2000000|
      |3     |3000000|