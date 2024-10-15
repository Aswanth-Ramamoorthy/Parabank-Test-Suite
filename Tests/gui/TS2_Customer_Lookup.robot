*** Settings ***
Documentation     Test case for the customer Lookup page
Library           SeleniumLibrary    timeout=10s
Resource          ../../Keywords/gui/KW1_setupTeardown.robot
Resource          ../../Keywords/gui/KW2_landingPage.robot
Resource          ../../Keywords/gui/KW3_signingUp.robot
Resource          ../../Keywords/gui/KW4_customerLookupPage.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Close the browser

*** Test Cases ***

TC1_Valid Customer Lookup
    [Documentation]    This test case verifies that a customer can be successfully looked up using valid information.
    ...               Steps:
    ...               1. Open the web browser and navigate to the customer lookup page.
    ...               2. Enter valid customer information.
    ...               3. Submit the lookup form.
    ...               4. Verify that the customer details are displayed correctly.
    [Tags]    CustomerLookup    Smoke    Regression
    Customer Lookup validinfo

TC2_Invalid Customer Lookup
    [Documentation]    This test case verifies that attempting to look up a customer with invalid information fails.
    ...               Steps:
    ...               1. Open the web browser and navigate to the customer lookup page.
    ...               2. Enter invalid customer information.
    ...               3. Submit the lookup form.
    ...               4. Verify that an appropriate error message is displayed indicating that the customer was not found.
    [Tags]    CustomerLookup    Regression
    Customer Lookup invalidinfo

TC3_Empty Customer Lookup
    [Documentation]    This test case verifies that attempting to look up a customer with empty fields fails.
    ...               Steps:
    ...               1. Open the web browser and navigate to the customer lookup page.
    ...               2. Attempt to submit the lookup form without entering any information.
    ...               3. Verify that appropriate error messages are displayed for the empty fields.
    [Tags]    CustomerLookup    Regression
    Customer Lookup emptyinfo


