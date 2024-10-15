*** Settings ***

Library    SeleniumLibrary
Resource    ../../Resources/elements.resource
Resource    ../../Resources/variables.resource
Resource    ../../Resources/messages.resource

*** Keywords ***

Apply for reasonable loanAmount
     [Documentation]    Apply for a loan with a reasonable amount.
    ...               Steps:
    ...               1. Click on the "Request Loan" link.
    ...               2. Enter a valid loan amount.
    ...               3. Enter a valid down payment amount.
    ...               4. Click the "Apply Now" button.
    ...               5. Verify that the loan application is successful and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.RequestLoan}
    Input Text    ${requestLoanPage.loanAmount}    ${loanAmount.valid}
    Input Text    ${requestLoanPage.downPayment}    ${downPayment.valid}
    Click Element    ${requestLoanPage.applynow_button}
    Wait Until Page Contains    ${requestLoanPage.success}    timeout=10s
    Wait Until Page Contains    ${requestLoanPage.successMessage}    timeout=10s

Apply for unreasonable loanAmount
    [Documentation]    Apply for a loan with an unreasonable amount.
    ...               Steps:
    ...               1. Click on the "Request Loan" link.
    ...               2. Enter an invalid loan amount.
    ...               3. Enter a valid down payment amount.
    ...               4. Click the "Apply Now" button.
    ...               5. Verify that the loan application fails and the appropriate error message is displayed.
    Click Element    ${accountServicesPage.RequestLoan}
    Input Text    ${requestLoanPage.loanAmount}    ${loanAmount.invalid}
    Input Text    ${requestLoanPage.downPayment}    ${downPayment.valid}
    Click Element    ${requestLoanPage.applynow_button}
    Sleep    2
    Wait Until Page Contains    ${requestLoanPage.error}    timeout=10s

Apply for loan with emptyfields
    [Documentation]    Apply for a loan with empty fields.
    ...               Steps:
    ...               1. Click on the "Request Loan" link.
    ...               2. Leave the loan amount and down payment fields empty.
    ...               3. Click the "Apply Now" button.
    ...               4. Verify that the loan application fails and the appropriate error message is displayed.
    Click Element    ${accountServicesPage.RequestLoan}
    Click Element    ${requestLoanPage.applynow_button}
    Sleep    2
    Wait Until Page Contains    ${requestLoanPage.error}    timeout=10s