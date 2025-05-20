*** Settings ***
Library           AppiumLibrary
Resource          ../../src/Object Repositories/login.resource

*** Keywords ***

login Into Application
  
  Click Element    locator=${USERNAME}
  Input Text Into Current Element   text=Test@1234   
  Click Element    locator=${BUTOON_LOGIN}
 
