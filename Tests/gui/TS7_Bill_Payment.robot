*** Settings ***
Documentation     This is a test case to verify bill payment
Library    SeleniumLibrary    timeout=10s
Resource    ../../Keywords/KW1_setupTeardown.robot
Resource    ../../Keywords/KW2_landingPage.robot
Resource    ../../Keywords/KW5_customerLogin.robot
Resource    ../../Keywords/KW9_billPay.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Bill Payment - Valid
    [Documentation]    This test case will verify that a bill payment can be successfully made with valid data.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the bill payment page.
    ...               4. Fill in the bill payment form with valid details.
    ...               5. Submit the bill payment form.
    ...               6. Verify that the bill payment is successful and the correct confirmation message is displayed.
    [Tags]    BillPayment    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}
    Valid Bill Payment

TC2_Bill Payment - Empty Fields
    [Documentation]    This test case will verify that attempting to make a bill payment with empty fields fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the bill payment page.
    ...               4. Attempt to submit the bill payment form without filling in any fields.
    ...               5. Verify that appropriate error messages are displayed for the empty fields.
    [Tags]    BillPayment    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}
    Empty Bill Payment Fields

TC3_Bill Payment - Invalid Account
     [Documentation]    This test case will verify that attempting to make a bill payment with an invalid account number fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the bill payment page.
    ...               4. Fill in the bill payment form with an invalid account number.
    ...               5. Submit the bill payment form.
    ...               6. Verify that an appropriate error message is displayed indicating the invalid account number.
    [Tags]    BillPayment    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}
    Invalid payee account