*** Settings ***
Library           AppiumLibrary
Resource          ../config/appium_config.robot
Resource          ../src/Pages/Login.robot
Resource    ../src/Pages/Dashboard.robot
     

*** Test Cases ***

Open Existing Android App
    Open Android Installed App
    Sleep    3s
    Log    App opened successfully
    login Into Application
    Verify Dashboard Page
    Logout Application
    Log    App Logout successfully

        
