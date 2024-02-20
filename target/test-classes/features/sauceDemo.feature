@regression @login_tests
Feature: Sauce Demo Functionalities
         This is to automate sauce demo functionalities

  # go to website
  # type username and password
  # click signin
  # verify logged in successfully
  
  
  # background allows us to reuse one or more given steps for the each scenarios in the feature file.
  # if we put steps in background, those steps will be applied to each of every scenarios.
  Background:  
  Given user is on the login page
  
  
  # this is an example of a test case denied as a user step
  @smoke_tests @valid_login @ES-425
  Scenario: Sauce demo valid login
    When user enters a valid username and valid password
    And user clicks on the signin button
    Then user is logged successfully

  @invalid_user_login
  Scenario: Sauce demo invalid username login
    When user enters invalid username and valid password
    And user clicks on the signin button
    Then user should not be logged in
    
  @invalid_password_login
  Scenario: Sauce demo valid user with invalid password
    When user enters valid username and invalid password
    And user clicks on the signin button
    Then user should not be logged in
    
    
    
    
    # this scenario outline test runs as many time as the row of data in the example table
    @outline
    Scenario Outline: Invalid login tests
    When user enters username "<username>" and password "<password>"
    And user clicks on the signin button
    Then user should not be logged in
    
    Examples:
    |    username       |      password    |
    |   hellohello      |     secret_sauce |
    |   standard_user   |     hjkhsdhgffsv |
    |                   |     secret_sauce |
    |   standard_user   |                  |
    |                   |                  |
    
    
    
    # Day 18 - Cucumber scenario parameterization
    
  @invalid_login_param
  Scenario: Sauce demo invalid username login
    When user enters invalid username "hellohello" and invalid password "invalidPassword"
    And user clicks on the signin button
    Then user should not be logged in with an error message as "Epic sadface: Username and password do not match any user in this service"
    
    
    
    
    
    
    # different format of defining the scenario as a user
       #Scenario: As a user, I should be able to login with valid cred
         # Given I am on the login page
         # When I enter a valid username and valid password
         # And I click on the signin button
         # Then I am logged in successfully
         
         
         
         
         