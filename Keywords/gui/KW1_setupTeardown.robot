*** Settings ***

Library    SeleniumLibrary
Resource    ../../Resources/variables.resource
Resource    ../../Resources/elements.resource
*** Keywords ***

#Test Setup
Open Web Browser
    [Documentation]    Open the browser and navigate to the specified URL.
    ...               Arguments:
    ...               - ${url}: The URL to navigate to.
    ...               - ${browser}: The browser to use (e.g., Chrome, Firefox).
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close the browser
    [Documentation]    Close the browser
    Close Browser

Logout the user and Close the Web Browser
    [Documentation]    Logout the user and close the web browser.
    ...               Steps:
    ...               1. Click the logout button to log out the user.
    ...               2. Close the browser.
    Click Element    ${accountServicesPage.LogOut}
    sleep    10
    Close Browser

