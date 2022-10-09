Feature: This feature would be creating a calculator for Add and Subtract

  @sanity
  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario Outline: This sceanrio is to create a scenario outline for multiplication
    Given I have a calculator
    When I multiply <integer1> and <integer2>
    Then I should get the result as <result>

    Examples: 
      | integer1 | integer2 | result |
      |        3 |        4 |     12 |
      |        9 |        9 |     81 |

  Scenario: To Add two numbers
    Given I have a calculator
    When I add below numbers
      | 3 |
      | 4 |
      | 2 |
      | 5 |
      | 3 |
    Then I should get the result as 17
