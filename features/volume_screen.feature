Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen


  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu


  Scenario Outline:
    When I swipe in the menu
    And I select "<target>" from menu
    Then I land on "<result>" screen
    Examples:
      |target|result|
      |Volume1|Volume|
      |Power |Power|
      |Currency|Currency|


  @wip
  Scenario Outline: User is able to convert Volume units into Tablespoon
    When I swipe in the menu
    And I select "Volume" from menu
    And I land on "Volume" screen
    And I select "<target>" from left column
    And I select "Tablespoon" from right column
    And I click on Clear button
    And I enter "1" to From field
    Then I get "<result>" in To field
    Examples:
      |target|result|
      |Teaspoon     |0.3333    |
      |Cup          |16        |
      |Fluid Ounce (US)|2      |




