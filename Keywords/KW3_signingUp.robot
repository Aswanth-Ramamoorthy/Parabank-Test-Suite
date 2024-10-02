*** Settings ***

Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=False
Library    OperatingSystem
Resource    ../Resources/elements.resource
Resource    ../Resources/variables.resource
Resource    ../Resources/messages.resource

*** Keywords ***

#Landing Page

Register new customer
    [Documentation]    Register a new customer with valid details.
    ...               Steps:
    ...               1. Click the register button.
    ...               2. Fill in the registration form with valid details.
    ...               3. Submit the registration form.
    Suppress Logging
    ${fname}    Get Decrypted Text    ${customerRegistrationPage.fname}
    Input Text    ${registerPage.fname}    ${fname}
    ${lname}    Get Decrypted Text    ${customerRegistrationPage.lname}
    Input Text    ${registerPage.lname}    ${lname}
    ${address}    Get Decrypted Text    ${customerRegistrationPage.address}
    Input Text    ${registerPage.address}    ${address}
    ${city}    Get Decrypted Text    ${customerRegistrationPage.city}
    Input Text    ${registerPage.city}    ${city}
    ${state}    Get Decrypted Text    ${customerRegistrationPage.state}
    Input Text    ${registerPage.state}    ${state}
    ${zip}    Get Decrypted Text    ${customerRegistrationPage.zip}
    Input Text    ${registerPage.zip}    ${zip}
    ${phone}    Get Decrypted Text    ${customerRegistrationPage.phone}
    Input Text    ${registerPage.phone}    ${phone}
    ${ssn}    Get Decrypted Text    ${customerRegistrationPage.ssn}
    Input Text    ${registerPage.ssn}    ${ssn}
    ${uname}    Get Decrypted Text    ${customerRegistrationPage.uname}
    Input Text    ${registerPage.uname}    ${uname}
    ${pwd}    Get Decrypted Text    ${customerRegistrationPage.pwd}
    Input Text    ${registerPage.pwd}    ${pwd}
    ${cpwd}    Get Decrypted Text    ${customerRegistrationPage.cpwd}
    Input Text    ${registerPage.cpwd}    ${cpwd}
    Unsuppress Logging
    Click Element    ${registerPage.register_button}
    Sleep    20
    ${customerExists}    Run Keyword And Return Status    Page Should Contain Element    ${registerPage.unameAlreadyExists}
    Run Keyword If    ${customerExists}    Log    Customer already exists
    Run Keyword Unless    ${customerExists}    Wait Until Page Contains    ${registerPage.registationSuccessMessage}

New Registration with Existing customer accountDetailsPage
    [Documentation]    Register a new customer with existing customer details.
    ...               Steps:
    ...               1. Click the register button.
    ...               2. Fill in the registration form with existing customer details.
    ...               3. Submit the registration form.
    Suppress Logging
    ${fname}    Get Decrypted Text    ${customerRegistrationPage.fname}
    Input Text    ${registerPage.fname}    ${fname}
    ${lname}    Get Decrypted Text    ${customerRegistrationPage.lname}
    Input Text    ${registerPage.lname}    ${lname}
    ${address}    Get Decrypted Text    ${customerRegistrationPage.address}
    Input Text    ${registerPage.address}    ${address}
    ${city}    Get Decrypted Text    ${customerRegistrationPage.city}
    Input Text    ${registerPage.city}    ${city}
    ${state}    Get Decrypted Text    ${customerRegistrationPage.state}
    Input Text    ${registerPage.state}    ${state}
    ${zip}    Get Decrypted Text    ${customerRegistrationPage.zip}
    Input Text    ${registerPage.zip}    ${zip}
    ${phone}    Get Decrypted Text    ${customerRegistrationPage.phone}
    Input Text    ${registerPage.phone}    ${phone}
    ${ssn}    Get Decrypted Text    ${customerRegistrationPage.ssn}
    Input Text    ${registerPage.ssn}    ${ssn}
    ${uname}    Get Decrypted Text    ${customerRegistrationPage.uname}
    Input Text    ${registerPage.uname}    ${uname}
    ${pwd}    Get Decrypted Text    ${customerRegistrationPage.pwd}
    Input Text    ${registerPage.pwd}    ${pwd}
    ${cpwd}    Get Decrypted Text    ${customerRegistrationPage.cpwd}
    Input Text    ${registerPage.cpwd}    ${cpwd}
    Unsuppress Logging
    Click Element    ${registerPage.register_button}
    Wait Until Element Contains    ${registerPage.unameAlreadyExists}    ${registerPage.unameAlreadyExistsMessage}