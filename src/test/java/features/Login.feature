Feature: Login Feature

  Background: 
    Given I have launched the application
    And I click on the Login Link
    
@sanity
  Scenario: This scenario is to define the login happy path
    When I enter the correct username and password
    And I click on the Login Button
    Then I should land on the home page

@regression
  Scenario: This scenario is to define the failure path
    When I enter the incorrect username and password
    And I click on the Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  Scenario: This scenario is to define the failure path
    When I enter the username as "xyz@abc.com" and Password as "Abc@1234"
    And I click on the Login Button
    Then I should land on the home page

  Scenario Outline: This sceanrio is to define the failure path
    When I enter the username as "<UserName>" and Password as "<Password>"
    And I click on the Login Button
    Then I should get the error message "The email or password you have entered is invalid."

    Examples: 
      | UserName    | Password |
      | abc@xyz.com | Abc@1234 |
      | pqr@xyz.com | Ert@1234 |
