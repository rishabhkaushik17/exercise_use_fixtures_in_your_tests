Feature: Google Form Testing 

  Scenario: User is able to fill the fields in the form and submit
    Given User is on the google form
    When User fills the fields in the google form
    Then Form should submit
