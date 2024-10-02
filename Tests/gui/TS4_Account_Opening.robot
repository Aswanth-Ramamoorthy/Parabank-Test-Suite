*** Settings ***
Documentation     Test case for the new account opening
Library           SeleniumLibrary    timeout=10s
Resource          ../../Keywords/KW1_setupTeardown.robot
Resource          ../../Keywords/KW2_landingPage.robot
Resource          ../../Keywords/KW5_customerLogin.robot
Resource          ../../Keywords/KW6_openNewAccount.robot

Test Setup        Open Web Browser    ${url}    ${browser}  
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Open New Checking Account
    [Documentation]    This test case verifies that a new checking account can be successfully opened.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Navigate to the "Open New Account" page.
    ...               3. Select "Checking" as the account type.
    ...               4. Submit the form to open the new checking account.
    ...               5. Verify that the new checking account is opened successfully and the correct confirmation message is displayed.
    [Tags]    OpenNewAccount    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${openNewAccountPage.OpenNewAccount}    timeout=5s
    Checking Account

TC2_Open New Savings Account
    [Documentation]    This test case verifies that a new savings account can be successfully opened.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Navigate to the "Open New Account" page.
    ...               3. Select "Savings" as the account type.
    ...               4. Submit the form to open the new savings account.
    ...               5. Verify that the new savings account is opened successfully and the correct confirmation message is displayed.
    [Tags]    OpenNewAccount    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${openNewAccountPage.OpenNewAccount}    timeout=5s
    Savings Account