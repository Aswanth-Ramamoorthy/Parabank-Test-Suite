*** Settings ***
Documentation     This is a test case to verify find transactions
Library    SeleniumLibrary    timeout=10s
Resource    ../../Keywords/gui/KW1_setupTeardown.robot
Resource    ../../Keywords/gui/KW2_landingPage.robot
Resource    ../../Keywords/gui/KW5_customerLogin.robot
Resource    ../../Keywords/gui/KW10_findTransactions.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Find Transactions - Valid Transaction ID
    [Documentation]    This test case will verify that transactions can be found using a valid transaction ID.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a valid transaction ID.
    ...               5. Submit the search form.
    ...               6. Verify that the transaction details are displayed correctly.
    [Tags]    FindTransactions    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with valid Transaction ID

TC2_Find Transactions - Invalid Transaction ID
     [Documentation]    This test case will verify that searching for transactions with an invalid transaction ID fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter an invalid transaction ID.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with invalid Transaction ID

TC3_Find Transactions - Empty Transaction ID
     [Documentation]    This test case will verify that searching for transactions with an Empty transaction ID fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter an Empty transaction ID.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with empty Transaction ID

TC4_Find Transactions - Valid Transaction Date
    [Documentation]    This test case will verify that transactions can be found using a valid transaction date.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a valid transaction date.
    ...               5. Submit the search form.
    ...               6. Verify that the transaction details are displayed correctly.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with valid Transaction Date

TC5_Find Transactions - Invalid Transaction Date
    [Documentation]    This test case will verify that searching for transactions with an invalid transaction date fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter an invalid transaction date.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with invalid Transaction Date

TC6_Find Transactions - Empty Transaction Date
    [Documentation]    This test case will verify that searching for transactions with an invalid transaction date fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter an blank transaction date.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with empty Transaction Date

TC7_Find Transactions - Valid Transaction Date Range
    [Documentation]    This test case will verify that transactions can be found using a valid transaction date range.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a valid transaction range.
    ...               5. Submit the search form.
    ...               6. Verify that the transaction details are displayed correctly.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with valid Transaction Date Range

TC8_Find Transactions - Invalid Transaction Date Range
    [Documentation]    This test case will verify that transactions can be found using a invalid transaction date range fails
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a invalid transaction range.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with invalid Transaction Date Range

TC9_Find Transactions - Empty Transaction Date Range
    [Documentation]    This test case will verify that transactions can be found using a blank transaction date range fails
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a blank transaction range.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with empty from and to dates

TC10_Find Transactions - Valid Transacaction Amount
    [Documentation]    This test case will verify that transactions can be found using a valid transaction amount.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a valid transaction amount.
    ...               5. Submit the search form.
    ...               6. Verify that the transaction details are displayed correctly.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with valid Transaction Amount

TC11_Find Transactions - Invalid Transacation Amount
    [Documentation]    This test case will verify that transactions can be found using a invalid transaction amount fails
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a invalid transaction amount.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with invalid Transaction Amount

TC12_Find Transactions - Empty Transacation Amount
    [Documentation]    This test case will verify that transactions can be found using a empty transaction amount fails
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the find transactions page.
    ...               4. Enter a blank transaction amount.
    ...               5. Submit the search form.
    ...               6. Verify that an appropriate error message is displayed.
    [Tags]    FindTransactions    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Find by Transaction with empty Transaction Amount