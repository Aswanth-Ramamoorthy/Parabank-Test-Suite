*** Settings ***
Documentation     Test case for the login page
Library           SeleniumLibrary    timeout=10s
Resource          ../../Keywords/gui/KW1_setupTeardown.robot
Resource          ../../Keywords/gui/KW2_landingPage.robot
Resource          ../../Keywords/gui/KW5_customerLogin.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Close the browser

*** Test Cases ***

TC1_Valid Login
     [Documentation]    This test case verifies that a user can successfully log in with valid credentials.
    ...               Steps:
    ...               1. Open the web browser and navigate to the login page.
    ...               2. Enter valid username and password.
    ...               3. Click the login button.
    ...               4. Verify that the user is redirected to the account overview page.
    ...               5. Log out from the account.
    [Tags]    Login    Smoke    Regression
    Customer Login
    Existing vaild Customer Login
    Click Element    ${accountServicesPage.LogOut}

TC2_Invalid Login
    [Documentation]    This test case verifies that login attempts with invalid credentials fail.
    ...               Steps:
    ...               1. Open the web browser and navigate to the login page.
    ...               2. Enter invalid username and/or password.
    ...               3. Click the login button.
    ...               4. Verify that an appropriate error message is displayed indicating invalid login.
    [Tags]    Login    Smoke    Regression
    Customer Login
    Empty username
    Empty password
    Empty username and password
    Invalid Customer Login

    