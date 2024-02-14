@regression @login_tests
Feature: Sauce Demo Functionalities
         This is to automate sauce demo functionalities

  # go to website
  # type username and password
  # click signin
  # verify logged in successfully
  
  # this is an example of a test case denied as a user step
  @smoke_tests @valid_login @ES-425
  Scenario: Sauce demo valid login
    Given user is on the login page
    When user enters a valid username and valid password
    And user clicks on the signin button
    Then user is logged successfully

  @invalid_user_login
  Scenario: Sauce demo invalid username login
    Given user is on the login page
    When user enters invalid username and valid password
    And user clicks on the signin button
    Then user should not be logged in
    
  @invalid_password_login
  Scenario: Sauce demo valid user with invalid password
    Given user is on the login page
    When user enters valid username and invalid password
    And user clicks on the signin button
    Then user should not be logged in