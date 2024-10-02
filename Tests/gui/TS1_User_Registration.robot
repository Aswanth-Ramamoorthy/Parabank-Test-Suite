*** Settings ***
Documentation     Test case for the user registration page
Library           SeleniumLibrary    timeout=10s
Resource          ../../Keywords/KW1_setupTeardown.robot
Resource          ../../Keywords/KW2_landingPage.robot
Resource          ../../Keywords/KW3_signingUp.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Close the browser

*** Test Cases ***
TC1_New User Registration
    [Documentation]    This test case verifies that a new user can successfully register.
    ...               Steps:
    ...               1. Open the web browser and navigate to the registration page.
    ...               2. Fill in the registration form with valid details.
    ...               3. Submit the registration form.
    ...               4. Verify that the registration is successful and the user is redirected to the account overview page.
    [Tags]    UserRegistration    Smoke    Regression
    Customer Registration
    Register new customer

TC2_New User Registration with Existing Customer
    [Documentation]    This test case verifies that attempting to register with an existing customer's details fails.
    ...               Steps:
    ...               1. Open the web browser and navigate to the registration page.
    ...               2. Fill in the registration form with details of an existing customer.
    ...               3. Submit the registration form.
    ...               4. Verify that an appropriate error message is displayed indicating that the user already exists.
    [Tags]    UserRegistration    Smoke    Regression
    Customer Registration
    New Registration with Existing customer accountDetailsPage