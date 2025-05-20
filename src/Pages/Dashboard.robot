*** Settings ***
Library           AppiumLibrary
Resource          ../../src/Object Repositories/login.resource

*** Keywords ***

Verify Dashboard Page
  Wait Until Element Is Visible  locator=${WELCOME_TEXT}

Logout Application
  Click Element  locator=${MORE_OPTION}
  Wait Until Element Is Visible  locator=${LOGOUT_BUTTON}
  Click Element  locator=${LOGOUT_BUTTON}

   
 
