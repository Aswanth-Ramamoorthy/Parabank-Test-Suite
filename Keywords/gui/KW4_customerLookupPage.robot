*** Settings ***
Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=False
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource

*** Keywords ***

Customer Lookup validinfo
     [Documentation]    Perform customer lookup with valid information.
    ...               Steps:
    ...               1. Enter valid customer information (first name, last name, address, city, state, zip, ssn).
    ...               2. Click the "Find My Login Info" button.
    ...               3. Verify that the customer details are displayed correctly.
    Click Element    ${landingPage.clogin.forgotlogin}
    Suppress Logging
    ${fname}    Get Decrypted Text    ${customerRegistrationPage.fname}
    Input Text    ${customerLookupPage.fname}    ${fname}
    ${lname}    Get Decrypted Text    ${customerRegistrationPage.lname}
    Input Text    ${customerLookupPage.lname}    ${lname}
    ${address}    Get Decrypted Text    ${customerRegistrationPage.address}
    Input Text    ${customerLookupPage.address}    ${address}
    ${city}    Get Decrypted Text    ${customerRegistrationPage.city}
    Input Text    ${customerLookupPage.city}    ${city}
    ${state}    Get Decrypted Text    ${customerRegistrationPage.state}
    Input Text    ${customerLookupPage.state}    ${state}
    ${zip}    Get Decrypted Text    ${customerRegistrationPage.zip}
    Input Text    ${customerLookupPage.zip}    ${zip}
    ${ssn}    Get Decrypted Text    ${customerRegistrationPage.ssn}
    Input Text    ${customerLookupPage.ssn}    ${ssn}
    Unsuppress Logging
    Click Element    ${customerLookupPage.findmyloginInfo_button}
    Wait Until Page Contains    ${customerLookup.successMessage}

Customer Lookup invalidinfo
    [Documentation]    Perform customer lookup with invalid information.
    ...               Steps:
    ...               1. Enter invalid customer information (first name, last name, address, city, state, zip, ssn).
    ...               2. Click the "Find My Login Info" button.
    ...               3. Verify that an appropriate error message is displayed indicating that the customer was not found.
    Click Element    ${landingPage.clogin.forgotlogin}
    Input Text    ${customerLookupPage.fname}    ${invalidCustomerLookup.fname}
    Input Text    ${customerLookupPage.lname}    ${invalidCustomerLookup.lname}
    Input Text    ${customerLookupPage.address}    ${invalidCustomerLookup.address}
    Input Text    ${customerLookupPage.city}    ${invalidCustomerLookup.city}
    Input Text    ${customerLookupPage.state}    ${invalidCustomerLookup.state}
    Input Text    ${customerLookupPage.zip}    ${invalidCustomerLookup.zip}
    Input Text    ${customerLookupPage.ssn}    ${invalidCustomerLookup.ssn}
    Click Element    ${customerLookupPage.findmyloginInfo_button}
    Wait Until Page Contains    ${customerLookup.failedMessage}

Customer Lookup emptyinfo
    [Documentation]    Perform customer lookup with empty fields.
    ...               Steps:
    ...               1. Leave all customer information fields empty.
    ...               2. Click the "Find My Login Info" button.
    ...               3. Verify that appropriate error messages are displayed for the empty fields.
    Click Element    ${landingPage.clogin.forgotlogin}
    Input Text    ${customerLookupPage.fname}    ${empty}
    Input Text    ${customerLookupPage.lname}    ${empty}
    Input Text    ${customerLookupPage.address}    ${empty}
    Input Text    ${customerLookupPage.city}    ${empty}
    Input Text    ${customerLookupPage.state}    ${empty}
    Input Text    ${customerLookupPage.zip}    ${empty}
    Input Text    ${customerLookupPage.ssn}    ${empty}
    Click Button    ${customerLookupPage.findmyloginInfo_button}
    Wait Until Page Contains Element    ${customerLookupPage.fname.error}
    Page Should Contain Element    ${customerLookupPage.lname.error}
    Page Should Contain Element    ${customerLookupPage.address.error}
    Page Should Contain Element    ${customerLookupPage.city.error}
    Page Should Contain Element    ${customerLookupPage.state.error}
    Page Should Contain Element    ${customerLookupPage.zip.error}
    Page Should Contain Element    ${customerLookupPage.ssn.error}