@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario: 1: Verify calculator
    When User enters 7 in field "[ng-model='first']"
    When User enters 9 in field "[ng-model='second']"
    When User selects "[value='MULTIPLICATION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "63"

  Scenario: 2: Verify calculator 1
    When User enters 56 in field "[ng-model='first']"
    When User enters 277 in field "[ng-model='second']"
    When User selects "[value='ADDITION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "333"

  Scenario: 3: Verify calculator 2
    When User enters 389 in field "[ng-model='first']"
    When User enters 56 in field "[ng-model='second']"
    When User selects "[value='SUBTRACTION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "333"

  Scenario: 4: Verify calculator 3
    When User enters 963 in field "[ng-model='first']"
    When User enters 3 in field "[ng-model='second']"
    When User selects "[value='DIVISION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "321"

  Scenario: 5: Verify calculator 4
    When User enters 965 in field "[ng-model='first']"
    When User enters 321 in field "[ng-model='second']"
    When User selects "[value='MODULO']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Go Button "#gobutton" is displayed
    Then Go Button "#gobutton" with text "Go!" is displayed
    Then Result "#gobutton" contains "Go!" text
    Then Result "h2" is equal to "2"