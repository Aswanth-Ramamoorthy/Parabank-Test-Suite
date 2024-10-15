*** Settings ***
Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=False
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource

*** Keywords ***
Existing vaild Customer Login
    [Documentation]    Login as an existing customer with valid credentials.
    ...               Steps:
    ...               1. Decrypt and enter the username.
    ...               2. Decrypt and enter the password.
    ...               3. Click the login button.
    ...               4. Wait until the account overview page is loaded.
    Suppress Logging
    ${uname}    Get Decrypted Text    ${customerRegistrationPage.uname}
    Input Text    ${landingPage.clogin.uname}    ${uname}
    ${pwd}    Get Decrypted Text    ${customerRegistrationPage.pwd}
    Input Text    ${landingPage.clogin.pwd}    ${pwd}
    Unsuppress Logging
    Click Element    ${landingPage.clogin.login_button}
    wait until page contains    ${customerLogin.accountOverview}
    Sleep    3
Empty username
     [Documentation]    Attempt to login with an empty username.
    ...               Steps:
    ...               1. Leave the username field empty.
    ...               2. Enter the password.
    ...               3. Click the login button.
    ...               4. Verify that an appropriate error message is displayed.
    Suppress Logging
    Input Text    ${landingPage.clogin.uname}    ${emptyCustomer.uname}
    ${pwd}    Get Decrypted Text    ${customerRegistrationPage.pwd}
    Input Text    ${landingPage.clogin.pwd}    ${pwd}
    Unsuppress Logging
    Click Element    ${landingPage.clogin.login_button}
    wait until page contains    ${customerLogin.noInputError}
    Sleep    3
Empty password
    [Documentation]    Attempt to login with an empty password.
    ...               Steps:
    ...               1. Enter the username.
    ...               2. Leave the password field empty.
    ...               3. Click the login button.
    ...               4. Verify that an appropriate error message is displayed.
    Suppress Logging
    ${uname}    Get Decrypted Text    ${customerRegistrationPage.uname}
    Input Text    ${landingPage.clogin.uname}    ${uname}
    Input Text    ${landingPage.clogin.pwd}    ${emptyCustomer.pwd}
    Unsuppress Logging
    Click Element    ${landingPage.clogin.login_button}
    wait until page contains    ${customerLogin.noInputError}
    Sleep    3
Empty username and password
    [Documentation]    Attempt to login with an empty password.
    ...               Steps:
    ...               1. Leave the username and password field empty.
    ...               2. Click the login button.
    ...               3. Verify that an appropriate error message is displayed.
    Input Text    ${landingPage.clogin.uname}    ${emptyCustomer.uname}
    Input Text    ${landingPage.clogin.pwd}    ${emptyCustomer.pwd}
    Click Element    ${landingPage.clogin.login_button}
    wait until page contains    ${customerLogin.noInputError}
    Sleep    3
    
Invalid Customer Login
    [Documentation]    Attempt to login with an invalid username.
    ...               Steps:
    ...               1. Enter an invalid username and password
    ...               2. Click the login button.
    ...               3. Verify that an appropriate error message is displayed.
    Suppress Logging
    Input Text    ${landingPage.clogin.uname}    ${invalidCustomer.uname}
    Input Text    ${landingPage.clogin.pwd}    ${invalidCustomer.pwd}
    Click Element    ${landingPage.clogin.login_button}
    wait until page contains    text=${customerLogin.invalidLoginError}
