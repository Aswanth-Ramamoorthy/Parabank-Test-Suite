*** Settings ***
Documentation     This is a test case to verify fund transfer
Library    SeleniumLibrary
Resource    ../../Keywords/gui/KW1_setupTeardown.robot
Resource    ../../Keywords/gui/KW2_landingPage.robot
Resource    ../../Keywords/gui/KW5_customerLogin.robot
Resource    ../../Keywords/gui/KW8_transferFunds.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Valid Fund Transfer
    [Documentation]    This test case will verify that a valid fund transfer between two accounts is successful.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the transfer funds page.
    ...               4. Enter valid details for the fund transfer (e.g., valid account numbers and amount).
    ...               5. Submit the transfer form.
    ...               6. Verify that the fund transfer is successful and the correct confirmation message is displayed.
    [Tags]    FundTransfer    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}
    Valid Transfer Funds between accounts

TC2_Invalid Fund Transfer
    [Documentation]    This test case will verify that an invalid fund transfer between two accounts fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the transfer funds page.
    ...               4. Enter invalid details for the fund transfer (e.g., invalid account numbers or amount).
    ...               5. Submit the transfer form.
    ...               6. Verify that the fund transfer fails and the appropriate error message is displayed.
    [Tags]    FundTransfer    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}
    Invalid Transfer Funds between accounts