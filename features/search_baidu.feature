Feature: test search in Baidu
  Scenario: search Jay in baidu
    Given I open baidu
    When  I input "Jay" in baidu
    And   I click button
    Then  I can see the information about Jay Chou


