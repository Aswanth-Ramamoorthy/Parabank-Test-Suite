*** Variables ***


#Customer Login

${customerLogin.noInputError}    Please enter a username and password
${customerLogin.invalidLoginError}    The username and password could not be verified.
${customerLogin.accountOverview}    Accounts Overview
${customerLogin.InternalError}    An internal error has occurred and has been logged.

#Customer Registration Page
${registerPage.registationSuccessMessage}    Your account was created successfully. You are now logged in.
${registerPage.unameAlreadyExistsMessage}    This username already exists.

#Customer Lookup Page
${customerLookup.successMessage}    Your login information was located successfully. You are now logged in.
${customerLookup.failedMessage}    The customer information provided could not be found.


#Open New Account Page
${openNewAccountPage.OpenNewAccount}    Open New Account
${openNewAccountPage.accountOpened}    Account Opened!
${openNewAccountPage.accountOpenedMessage}    Congratulations, your account is now open.

#Account Overview Page
${accountOverviewPage.accountOverview}    Account Overview
${accountOverviewPage.accounttext}    Account Details
${accountDetailsPage.transactionDetails}    Transaction Details

#Trandsfer Funds Page
${fundTransferPage.transferFundstext}    Transfer Funds
${fundTransferPage.transferSuccess}    Transfer Complete!
${fundTransferPage.transferError}    An internal error has occurred and has been logged.


#Bill Pay Page
${billPayPage.paymentComplete}    Bill Payment Complete


#Find Transactions Page

${findTransactionsPage.success}    Transaction Results
${findTransactionsPage.noResults}    No results found
${findTransactionsPage.error}    An internal error has occurred and has been logged.


#Update Contact Info Page
${updateContactInfo.success}    Profile Updated
${updateContactInfo.successMessage}    Your updated address and phone number have been added to the system.
${updateContactInfo.error}    An internal error has occurred and has been logged.

#Request Loan Page
${requestLoanPage.success}    Loan Request Processed
${requestLoanPage.successMessage}    Congratulations, your loan has been approved.
${requestLoanPage.error}    An internal error has occurred and has been logged.