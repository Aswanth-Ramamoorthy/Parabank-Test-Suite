*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource
*** Keywords ***

Find by Transaction with valid Transaction ID
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items     ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByTransactionID}    ${transactionID.valid}
        Click Element    ${findTransactionsPage.transactionID_button}
        Wait Until Page Contains    ${findTransactionsPage.success}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with invalid Transaction ID
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByTransactionID}    ${transactionID.invalid}
        Click Element    ${findTransactionsPage.transactionID_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionIDError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with empty Transaction ID
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Click Element    ${findTransactionsPage.transactionID_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionIDError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with valid Transaction Date
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByDate}    ${transactionDate.valid}
        Click Element    ${findTransactionsPage.transactionDate_button}
        Wait Until Page Contains    ${findTransactionsPage.success}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with invalid Transaction Date
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByDate}    ${transactionDate.invalid}
        Click Element    ${findTransactionsPage.transactionDate_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionDateError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with empty Transaction Date
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Click Element    ${findTransactionsPage.transactionDate_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionDateError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with valid Transaction Date Range
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByDateRangeFrom}    ${transactionDate.fromDate.Valid} 
        Input Text    ${findTransactionsPage.findByDateRangeTo}    ${transactionDate.toDate.Valid} 
        Click Element    ${findTransactionsPage.transactionDateRange_button}
        Wait Until Page Contains    ${findTransactionsPage.success}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with invalid Transaction Date Range
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByDateRangeFrom}    ${transactionDate.fromDate.Invalid} 
        Input Text    ${findTransactionsPage.findByDateRangeTo}    ${transactionDate.toDate.Invalid} 
        Click Element    ${findTransactionsPage.transactionDateRange_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionDateRangeError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with empty from and to dates
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Click Element    ${findTransactionsPage.transactionDateRange_button}
        Wait Until Page Contains Element    ${findTransactionsPage.transactionDateRangeError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with valid Transaction Amount
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByAmount}    ${transactionAmount.valid}
        Click Element    ${findTransactionsPage.findByAmount_button}
        Wait Until Page Contains    ${findTransactionsPage.success}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with invalid Transaction Amount
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Input Text    ${findTransactionsPage.findByAmount}    ${transactionAmount.invalid}
        Click Element    ${findTransactionsPage.findByAmount_button}
        Wait Until Page Contains Element    ${findTransactionsPage.amountError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END

Find by Transaction with empty Transaction Amount
    [Documentation]    Select an account to find the transactions
    Click Element    ${accountServicesPage.FindTransactions}
    @{account}    Get List Items    ${findTransactionsPage.selectanAccount}
    FOR    ${i}    IN    @{account}
        Select From List By Value    ${findTransactionsPage.selectanAccount}    ${i}
        Click Element    ${findTransactionsPage.findByAmount_button}
        Wait Until Page Contains Element    ${findTransactionsPage.amountError}    timeout=10s
        Click Element    ${accountServicesPage.FindTransactions}
    END