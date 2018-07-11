@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario: 1: Verify calculator
    Then Attribute "class" of field "[ng-model='first']" contains "ng-untouched"
    When User clicks First Field "[ng-model='first']"
    Then Attribute "class" of field "[ng-model='first']" contains "ng-touched"