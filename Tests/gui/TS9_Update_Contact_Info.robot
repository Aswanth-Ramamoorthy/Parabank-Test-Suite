*** Settings ***

Documentation     This is a test case to verify update contact information
Library    SeleniumLibrary    timeout=10s
Resource    ../../Keywords/gui/KW1_setupTeardown.robot
Resource    ../../Keywords/gui/KW2_landingPage.robot
Resource    ../../Keywords/gui/KW5_customerLogin.robot
Resource    ../../Keywords/gui/KW11_updateContactInfo.robot

Test Setup        Open Web Browser    ${url}    ${browser}
Test Teardown     Logout the user and Close the Web Browser

*** Test Cases ***
TC1_Update Contact Info - Valid
    [Documentation]    This test case will verify that a user can successfully update their contact information with valid data.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the update contact information page.
    ...               4. Fill in the contact information form with valid data.
    ...               5. Submit the form.
    ...               6. Verify that the contact information is updated successfully.
    [Tags]    UpdateContactInfo    Smoke    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Update Profile Info    

TC2_Update Contact Info - Empty Fields
    [Documentation]    This test case will verify that updating contact information with empty fields fails.
    ...               Steps:
    ...               1. Log in as an existing valid customer.
    ...               2. Wait until the account overview page is loaded.
    ...               3. Navigate to the update contact information page.
    ...               4. Attempt to submit the form without filling in any fields.
    ...               5. Verify that appropriate error messages are displayed for the empty fields.
    [Tags]    UpdateContactInfo    Regression
    Existing vaild Customer Login
    Wait Until Page Contains    ${customerLogin.accountOverview}    timeout=10s
    Update Profile Info with empty fields