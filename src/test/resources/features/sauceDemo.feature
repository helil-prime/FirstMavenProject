Feature: Sauce Demo Functionalities
         This is to automate sauce demo functionalities

  # go to website
  # type username and password
  # click signin
  # verify logged in successfully
  
  # this is an example of a test case denied as a user step
  Scenario: Sauce demo valid login
    Given user is on the login page
    When user enters a valid username and valid password
    And user clicks on the signin button
    Then user is logged successfully

    
    
    
    