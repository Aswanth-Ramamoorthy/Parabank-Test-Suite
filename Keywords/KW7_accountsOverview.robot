*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../Resources/elements.resource
Resource    ../Resources/variables.resource
Resource    ../Resources/messages.resource


*** Keywords ***
Check Transaction Table
    [Documentation]    Verify that the transaction table is displayed correctly.
    ...               Steps:
    ...               1. Wait until the transaction table is visible.
    ...               2. Verify that the transaction table contains the expected data.
    ${isTranasactionTableVisible}    Run Keyword And Return Status    page should contain element    ${accountDetailsPage.transactionTable}
    IF   ${isTranasactionTableVisible}
        ${transactionsCount}    Get Element Count    ${accountDetailsPage.transactionTable}
        FOR    ${i}    IN RANGE    1    ${transactionsCount}+1
            ${transaction_xpath}    Set Variable    xpath=//table[@id='transactionTable']/tbody/tr[${i}]/td[2]
            ${transaction_value}    Get Text    ${transaction_xpath}
            ${transaction}    Set Variable    xpath=//a[contains(@href, 'transaction.htm') and contains(text(), '${transaction_value}')]
            Click Element    ${transaction}
            wait until page contains    ${accountDetailsPage.transactionDetails}    timeout=5
            Go Back
        END
    ELSE   
        Wait Until Page Contains Element    ${accountDetailsPage.noTransactionsFound}    timeout=5
    END 

Accounts Details and Activity      
    [Documentation]    Verify that the account overview page is displayed correctly.
    ...               Steps:
    ...               1. Wait until the account details element is visible.
    ...               2. Get the count of account details elements.
    ...               3. Log the number of accounts available.
    ...               4. Iterate through each account and verify the account details.
    Click Element    ${accountServicesPage.AccountOverview}
    Wait Until Element Is Visible    ${accountOverviewPage.accountDetails}    timeout=10
    ${temp}    Get Element Count    ${accountOverviewPage.accountDetails}
    ${accountCount}    Evaluate    ${temp} - 1
    Log    Number if accounts available: ${accountCount}
    FOR    ${month}    IN RANGE    1    ${accountCount}+1
        ${row_xpath}    Set Variable    xpath=//table[@id='accountTable']/tbody/tr[${month}]/td[1]
        ${cell_value}    Get Text    ${row_xpath}
        ${account_id}    Set Variable    xpath=//a[@href='activity.htm?id=${cell_value}']
        click element    ${account_id}
        Wait Until page contains    ${accountOverviewPage.accounttext}    timeout=10
        @{activityPeriod}    Get List Items    ${accountDetailsPage.activityPeriod}
        FOR    ${i}    IN    @{activityPeriod}     
            Select From List By Label    ${accountDetailsPage.activityPeriod}    ${i}
            @{accountType}    Get List Items    ${accountDetailsPage.activityType}
            FOR    ${j}    IN    @{accountType}
                Select From List By Label     ${accountDetailsPage.activityType}    ${j}
                Click Button    ${accountDetailsPage.goButton}
                Check Transaction Table
            END
        END        
    END
    