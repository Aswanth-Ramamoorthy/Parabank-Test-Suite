*** Settings ***
Library    SeleniumLibrary    timeout=10s
Resource    ../../Keywords/gui/KW1_setupTeardown.robot
Resource    ../../Keywords/gui/KW2_landingPage.robot
Resource    ../../Keywords/gui/KW5_customerLogin.robot
Resource    ../../Keywords/gui/KW12_requestLoan.robot

Test Setup        Open Web Browser    ${url}    ${browser}    
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Request Loan - Valid
    [Documentation]    This test case will verify that a loan request can be successfully made with valid data.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Apply for a loan with a reasonable amount.
    [Tags]    RequestLoan    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Apply for reasonable loanAmount

TC2_Request Loan - Invalid
    [Documentation]    This test case will verify that a loan request fails with invalid data.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Apply for a loan with an unreasonable amount.
    [Tags]    RequestLoan    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Apply for unreasonable loanAmount

TC3_Request Loan - Empty Fields
    [Documentation]    This test case will verify that a loan request fails when required fields are left empty.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Attempt to apply for a loan without filling in the required fields.
    [Tags]    RequestLoan    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Apply for loan with emptyfields