*** Settings ***

Library    SeleniumLibrary
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource
*** Keywords ***

Valid Bill Payment
    [Documentation]    Pay a bill with valid details.
    ...               Steps:
    ...               1. Click on the "Bill Pay" link.
    ...               2. Enter valid details for the payee (name, address, city, state, zip, phone, account, verify account, amount).
    ...               3. Click the send payment button.
    ...               4. Verify that the payment is successful and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.BillPay}
    @{account}    Get List Items    ${billPayPage.fromAccount}
    FOR    ${i}    IN    @{account}
        Input Text    ${billPayPage.payeeName}    ${BillPayee.payeeName} 
        Input Text    ${billPayPage.address}    ${BillPayee.address}
        Input Text    ${billPayPage.city}    ${BillPayee.city}
        Input Text    ${billPayPage.state}    ${BillPayee.state}
        Input Text    ${billPayPage.zip}    ${BillPayee.zip}
        Input Text    ${billPayPage.phone}    ${BillPayee.phone}
        Input Text    ${billPayPage.account}    ${BillPayee.account}
        Input Text    ${billPayPage.verifyAccount}    ${BillPayee.verifyAccount}
        Input Text    ${billPayPage.amount}    ${BillPayee.amount}
        Select From List By Value    ${billPayPage.fromAccount}    ${i}
        Click Element    ${billPayPage.sendPayment_button}
        Sleep    3
        Wait Until Page Contains    ${billPayPage.paymentComplete}    timeout=10s
        Click Element    ${accountServicesPage.BillPay}
    END
    

Empty Bill Payment Fields
    [Documentation]    Attempt to pay a bill with empty fields.
    ...               Steps:
    ...               1. Click on the "Bill Pay" link.
    ...               2. Leave all fields empty.
    ...               3. Click the send payment button.
    ...               4. Verify that appropriate error messages are displayed for the empty fields.
    Click Element    ${accountServicesPage.BillPay}
    @{account}    Get List Items    ${billPayPage.fromAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${billPayPage.fromAccount}    ${i}
        Click Element    ${billPayPage.sendPayment_button}
        Sleep    3
        Wait Until Page Contains Element    ${billPayPage.payeeName.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.address.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.city.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.state.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.zip.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.phone.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.account.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.verifyAccount.empty}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.amount.empty}    timeout=10s
        Click Element    ${accountServicesPage.BillPay}

    END
    
Invalid payee account
    [Documentation]    Pay a bill with invalid account details.
    ...               Steps:
    ...               1. Click on the "Bill Pay" link.
    ...               2. Enter invalid details for the payee (account, verify account, amount).
    ...               3. Click the send payment button.
    ...               4. Verify that appropriate error messages are displayed indicating the invalid account details.
    Click Element    ${accountServicesPage.BillPay}
    @{account}    Get List Items    ${billPayPage.fromAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${billPayPage.fromAccount}    ${i}
        Input Text    ${billPayPage.payeeName}    ${BillPayee.payeeName}
        Input Text    ${billPayPage.address}    ${BillPayee.address}
        Input Text    ${billPayPage.city}    ${BillPayee.city}
        Input Text    ${billPayPage.state}    ${BillPayee.state}
        Input Text    ${billPayPage.zip}    ${BillPayee.zip}
        Input Text    ${billPayPage.phone}    ${BillPayee.phone}
        Input Text    ${billPayPage.account}    ${BillPayee.account.invalid}
        Input Text    ${billPayPage.verifyAccount}    ${BillPayee.verifyAccount.invalid}
        Input Text    ${billPayPage.amount}    ${BillPayee.amount.invalid}
        Click Element    ${billPayPage.sendPayment_button}
        Sleep    3
        Wait Until Page Contains Element    ${billPayPage.account.invalid}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.verifyAccount.invalid}    timeout=10s
        Wait Until Page Contains Element    ${billPayPage.amount.invalid}    timeout=10s
        Click Element    ${accountServicesPage.BillPay}
    END