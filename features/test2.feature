@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario Outline: 1 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='ADDITION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"

    Examples:

    |first|second|output|
    |59|456|515|
    |78|951|1029|
    |6578|627|7205|

  Scenario Outline: 2 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='DIVISION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"

    Examples:

      | first | second | output |
      | 12    | 3      | 4      |
      | 24    | 3      | 8      |
      | 100   | 10     | 10     |

  Scenario Outline: 3 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='MODULO']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"

    Examples:

      | first | second | output |
      | 14    | 3      | 2      |
      | 25    | 3      | 1      |
      | 109   | 10     | 9      |

  Scenario Outline: 4 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='MULTIPLICATION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"

    Examples:

      | first | second | output |
      | 14    | 3      | 42     |
      | 25    | 3      | 75     |
      | 109   | 10     | 1090   |


  Scenario Outline: 5 Verify calculator
    When User enters <first> in field "[ng-model='first']"
    When User enters <second> in field "[ng-model='second']"
    When User selects "[value='SUBTRACTION']" from dropdown "select"
    When User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "<output>"

    Examples:

      | first | second | output |
      | 14    | 3      | 11     |
      | 25    | 3      | 22     |
      | 109   | 10     | 99     |