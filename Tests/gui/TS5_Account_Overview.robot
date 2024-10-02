*** Settings ***
Documentation     Test case for the account overview page
Library           SeleniumLibrary    timeout=10s
Resource          ../../Keywords/KW1_setupTeardown.robot
Resource          ../../Keywords/KW2_landingPage.robot
Resource          ../../Keywords/KW5_customerLogin.robot
Resource          ../../Keywords/KW7_accountsOverview.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Verifing account overview page
    [Documentation]    This test case verifies that the account overview page is displayed correctly.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Click on the "Account Overview" link.
    ...               3. Verify that the account details are displayed correctly on the account overview page.
    [Tags]    AccountOverview    Smoke
    Existing vaild Customer Login
    Click Element    ${accountServicesPage.AccountOverview}
    Wait Until Page Contains Element   ${accountOverviewPage.accountDetails}    timeout=5s

TC2_Testing all the available accounts and Activities
    [Documentation]    This test case verifies that all available accounts and their activities are displayed correctly on the account overview page.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Verify that all available accounts are listed on the account overview page.
    ...               3. Verify that the activities for each account are displayed correctly.
    [Tags]    AccountOverview    Regression
    Existing vaild Customer Login
    Accounts Details and Activity
