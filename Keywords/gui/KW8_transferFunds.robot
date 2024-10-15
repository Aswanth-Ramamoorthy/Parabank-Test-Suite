*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource
*** Keywords ***
Valid Transfer Funds between accounts
    [Documentation]    Transfer funds between two accounts with valid information.
    ...               Steps:
    ...               1. Click on the "Transfer Funds" link.
    ...               2. Wait until the transfer funds page is loaded.
    ...               3. Enter a valid amount to transfer.
    ...               4. Select the source account from the dropdown list.
    ...               5. Select the destination account from the dropdown list.
    ...               6. Click the transfer button.
    ...               7. Verify that the transfer is successful and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.TransferFunds}
    Wait Until Page Contains    ${fundTransferPage.transferFundstext}    timeout=10s
    Input Text    ${fundTransferPage.amount}    ${smallAmount}
    Sleep    5s
    @{fromAccount}    Get List Items   ${fundTransferPage.fromAccount}
    @{toAccount}    Get List Items   ${fundTransferPage.toAccount}
    FOR    ${i}    IN    @{fromAccount}
        Select From List By Value    ${fundTransferPage.fromAccount}    ${i}
        FOR    ${j}    IN    @{toAccount}
            Select From List By Value    ${fundTransferPage.toAccount}    ${j}
            Click Element    ${fundTransferPage.transfer_button}
            Wait Until Page Contains    ${fundTransferPage.transferSuccess}    timeout=10s
            Go Back
        END
    END

Invalid Transfer Funds between accounts
    [Documentation]    Transfer funds between two accounts with invalid information.
    ...               Steps:
    ...               1. Click on the "Transfer Funds" link.
    ...               2. Wait until the transfer funds page is loaded.
    ...               3. Enter an invalid amount to transfer (e.g., empty or non-numeric).
    ...               4. Select the source account from the dropdown list.
    ...               5. Select the destination account from the dropdown list.
    ...               6. Click the transfer button.
    ...               7. Verify that the transfer fails and the appropriate error message is displayed.
    Click Element    ${accountServicesPage.TransferFunds}
    Wait Until Page Contains    ${fundTransferPage.transferFundstext}    timeout=10s
    Input Text    ${fundTransferPage.amount}    ${empty}
    Sleep    5s
    @{fromAccount}    Get List Items    ${fundTransferPage.fromAccount}
    @{toAccount}    Get List Items    ${fundTransferPage.toAccount}
    FOR    ${i}    IN    @{fromAccount}
        Select From List By Value    ${fundTransferPage.fromAccount}    ${i}
        FOR    ${j}    IN    @{toAccount}
            Select From List By Value    ${fundTransferPage.toAccount}    ${j}
            Click Element    ${fundTransferPage.transfer_button}
            Wait Until Page Contains    ${fundTransferPage.transferError}    timeout=10s
            Go Back
        END
    END