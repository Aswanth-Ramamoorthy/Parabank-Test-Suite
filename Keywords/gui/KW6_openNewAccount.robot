*** Settings ***

Library    SeleniumLibrary
Resource    ../../Resources/elements.resource    
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource

*** Keywords ***
Checking Account
    [Documentation]    Open a new checking account.
    ...               Steps:
    ...               1. Click on the "Open New Account" link.
    ...               2. Select "Checking" as the account type.
    ...               3. Select an existing account to transfer funds from.
    ...               4. Submit the form to open the new checking account.
    ...               5. Verify that the new checking account is opened successfully and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.openNewAccount}
    Sleep    5
    FOR    ${i}    IN RANGE    0    2
        Select From List By Value    ${openNewAccountPage.type}    0
        Select From List By Index    ${openNewAccountPage.amount}    ${i}
        Click Element    ${openNewAccountPage.openAccount_button}
        Sleep    5
        wait until page contains    ${openNewAccountPage.accountOpened}
        Page Should Contain    ${openNewAccountPage.accountOpenedMessage}
        Sleep    3
        Click Element    ${accountServicesPage.openNewAccount}
        Sleep    3
    END

Savings Account
    [Documentation]    Open a new savings account.
    ...               Steps:
    ...               1. Click on the "Open New Account" link.
    ...               2. Select "Savings" as the account type.
    ...               3. Select an existing account to transfer funds from.
    ...               4. Submit the form to open the new savings account.
    ...               5. Verify that the new savings account is opened successfully and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.openNewAccount}
    Sleep    5
    FOR    ${i}    IN RANGE    0    2
        Select From List By Value    ${openNewAccountPage.type}    1
        Select From List By Index    ${openNewAccountPage.amount}    ${i}
        Click Element    ${openNewAccountPage.openAccount_button}
        Sleep    5
        wait until page contains    ${openNewAccountPage.accountOpened}
        Page Should Contain    ${openNewAccountPage.accountOpenedMessage}
        Sleep    3
        Click Element    ${accountServicesPage.openNewAccount}
        Sleep    3
    END