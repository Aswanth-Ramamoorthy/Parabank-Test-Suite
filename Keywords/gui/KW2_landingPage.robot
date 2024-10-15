*** Settings ***

Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=False
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource

*** Keywords ***

#Landing Page
Customer Registration
    [Documentation]    Click the customer registration link to navigate to the registration page.
    Click Element    ${landingPage.clogin.register}
    Sleep    2

Customer Login
    [Documentation]    Perform customer login.
    ...               Steps:
    ...               1. Enter the username and password.
    ...               2. Click the login button.
    Sleep    2


Forgot Login Information
    [Documentation]    Click on the forgot login link to navigate to the forgot login information page.
    Click Element    ${landingPage.clogin.forgotlogin}
    Sleep    2
