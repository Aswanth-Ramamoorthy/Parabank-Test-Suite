*** Settings ***

Resource    ../Resources/variables.resource

*** Variables ***

#Landing Page
${landingPage.solution}    class = solutions
${landingPage.aboutus}    xpath=/html/body/div[1]/div[2]/ul[1]/li[2]/a
${landingpage.services}    xpath=/html/body/div[1]/div[2]/ul[1]/li[3]/a
${landingpage.products}    xpath=/html/body/div[1]/div[2]/ul[1]/li[4]/a
${landingpage.locations}    xpath=/html/body/div[1]/div[2]/ul[1]/li[5]/a
${landingpage.adminPage}    xpath=/html/body/div[1]/div[2]/ul[1]/li[6]/a
${landingPage.clogin.uname}        name=username
${landingPage.clogin.pwd}        name=password
${landingPage.clogin.login_button}    xpath=/html/body/div[1]/div[3]/div[1]/div/form/div[3]/input
${landingPage.clogin.forgotlogin}    css=#loginPanel > p:nth-child(2) > a:nth-child(1)
${landingPage.clogin.register}    css=#loginPanel > p:nth-child(3) > a
${landingPage.wel.home}    css=.home > a:nth-child(1)
${landingPage.wel.aboutus}    css=.aboutus > a:nth-child(1)
${landingPage.wel.contactus}    css=.contact > a:nth-child(1)
${landingPage.atmServices.withdrawFunds}    css=ul.services > li:nth-child(2) > a:nth-child(1)
${landingPage.atmServices.transferFunds}    css=ul.services > li:nth-child(3) > a:nth-child(1)
${landingPage.atmSercices.checkBalance}    css=ul.services > li:nth-child(4) > a:nth-child(1)
${landingPage.atmServices.depositFunds}    css=ul.services > li:nth-child(5) > a:nth-child(1)
${landingPage.onlineServices.billPay}    css=.servicestwo > li:nth-child(2) > a:nth-child(1)
${landingPage.onlineServices.accountHistory}    css=.servicestwo > li:nth-child(3) > a:nth-child(1)
${landingPage.onlineServices.transferFunds}    css=.servicestwo > li:nth-child(4) > a:nth-child(1)


#Register Page

${registerPage.fname}    name=customer.firstName
${registerPage.lname}    name=customer.lastName
${registerPage.address}    name=customer.address.street
${registerPage.city}    name=customer.address.city
${registerPage.state}    name=customer.address.state
${registerPage.zip}    name=customer.address.zipCode
${registerPage.phone}    name=customer.phoneNumber
${registerPage.ssn}    name=customer.ssn
${registerPage.uname}    name=customer.username
${registerPage.pwd}    name=customer.password
${registerPage.cpwd}    name=repeatedPassword
${registerPage.register_button}    xpath=/html/body/div[1]/div[3]/div[2]/form/table/tbody/tr[13]/td[2]/input
${registerPage.unameAlreadyExists}    id=customer.username.errors


#Customer Lookup Page

${customerLookupPage.fname}    id=firstName
${customerLookupPage.fname.error}    id=firstName.errors
${customerLookupPage.lname}    id=lastName
${customerLookupPage.lname.error}    id=lastName.errors
${customerLookupPage.address}    id=address.street
${customerLookupPage.address.error}    id=address.street.errors
${customerLookupPage.city}    id=address.city
${customerLookupPage.city.error}    id=address.city.errors
${customerLookupPage.state}    id=address.state
${customerLookupPage.state.error}    id=address.state.errors
${customerLookupPage.zip}    id=address.zipCode
${customerLookupPage.zip.error}    id=address.zipCode.errors
${customerLookupPage.ssn}    id=ssn
${customerLookupPage.ssn.error}    id=ssn.errors
${customerLookupPage.findmyloginInfo_button}    xpath=/html/body/div[1]/div[3]/div[2]/form/table/tbody/tr[8]/td[2]/input
${customerLookupPage.validinfo}    css=.title
${customerLookupPage.invalidinfo}    class=error

#Account Services Page

${accountServicesPage.OpenNewAccount}    css=#leftPanel > ul:nth-child(3) > li:nth-child(1) > a:nth-child(1)
${accountServicesPage.AccountOverview}    css=#leftPanel > ul:nth-child(3) > li:nth-child(2) > a:nth-child(1)
${accountServicesPage.TransferFunds}    css=#leftPanel > ul:nth-child(3) > li:nth-child(3) > a:nth-child(1)
${accountServicesPage.BillPay}    css=#leftPanel > ul:nth-child(3) > li:nth-child(4) > a:nth-child(1)
${accountServicesPage.FindTransactions}    css=#leftPanel > ul:nth-child(3) > li:nth-child(5) > a:nth-child(1)
${accountServicesPage.UpdateContactInfo}    css=#leftPanel > ul:nth-child(3) > li:nth-child(6) > a:nth-child(1)
${accountServicesPage.RequestLoan}    css=#leftPanel > ul:nth-child(3) > li:nth-child(7) > a:nth-child(1)
${accountServicesPage.LogOut}    css=#leftPanel > ul:nth-child(3) > li:nth-child(8) > a:nth-child(1)


#Open New Account Page
${openNewAccountPage.type}    id=type  #index = 0 for Checking and index=1 for Savings
${openNewAccountPage.amount}    id=fromAccountId    #index = 0,1,2 ... depending on the number of available accounts
${openNewAccountPage.openAccount_button}    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/div/input

# Account Overview Page
${accountOverviewPage.accountId}    xpath=//table[@id='accountTable']/tbody/tr/td[2]
${accountOverviewPage.accountDetails}    xpath=//table[@id='accountTable']/tbody/tr
${accountDetailsPage.activityPeriod}    id=month    #index = 0,1,2 ... depending on the number of available months
${accountDetailsPage.activityType}    id=transactionType   #index = 0,1,2 ... depending on the number of available transaction types
${accountDetailsPage.goButton}    css=input.button
${accountDetailsPage.transactionTable}    xpath=//table[@id='transactionTable']/tbody/tr[1]/td[1]
${accountDetailsPage.noTransactionsFound}    id=noTransactions

#Transfer Funds Page

${fundTransferPage.amount}    id=amount
${fundTransferPage.fromAccount}    id=fromAccountId
${fundTransferPage.toAccount}    id=toAccountId
${fundTransferPage.transfer_button}    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/div[2]/input



#Bill Pay Page

${billPayPage.payeeName}    name=payee.name
${billPayPage.address}    name=payee.address.street
${billPayPage.city}    name=payee.address.city
${billPayPage.state}    name=payee.address.state
${billPayPage.zip}    name=payee.address.zipCode
${billPayPage.phone}    name=payee.phoneNumber
${billPayPage.account}    name=payee.accountNumber
${billPayPage.verifyAccount}    name=verifyAccount
${billPayPage.amount}    name=amount
${billPayPage.fromAccount}    name=fromAccountId
${billPayPage.sendPayment_button}    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/table/tbody/tr[14]/td[2]/input


${billPayPage.payeeName.empty}    id=validationModel-name
${billPayPage.address.empty}    id=validationModel-address
${billPayPage.city.empty}    id=validationModel-city
${billPayPage.state.empty}    id=validationModel-state
${billPayPage.zip.empty}    id=validationModel-zipCode
${billPayPage.phone.empty}    id=validationModel-phoneNumber
${billPayPage.account.empty}    id=validationModel-account-empty
${billPayPage.verifyAccount.empty}    id=validationModel-verifyAccount-empty
${billPayPage.amount.empty}    id=validationModel-amount-empty
${billPayPage.account.invalid}    id=validationModel-account-invalid
${billPayPage.verifyAccount.invalid}    id=validationModel-verifyAccount-invalid
${billPayPage.amount.invalid}    id=validationModel-amount-invalid

#Find Transactions Page
${findTransactionsPage.selectanAccount}    id=accountId
${findTransactionsPage.findByTransactionID}    id=transactionId
${findTransactionsPage.transactionID_button}    id=findById
${findTransactionsPage.transactionIDError}    id=transactionIdError
${findTransactionsPage.findByDate}    id=transactionDate
${findTransactionsPage.transactionDateError}    id=transactionDateError
${findTransactionsPage.transactionDate_button}    id=findByDate
${findTransactionsPage.findByDateRangeFrom}    id=fromDate
${findTransactionsPage.findByDateRangeTo}    id=toDate
${findTransactionsPage.transactionDateRangeError}    id=dateRangeError
${findTransactionsPage.transactionDateRange_button}    id=findByDateRange
${findTransactionsPage.findByAmount}    id=amount
${findTransactionsPage.amountError}    id=amountError
${findTransactionsPage.findByAmount_button}    id=findByAmount

#Update Contact Info Page
${updateContactInfo.fname}    id=customer.firstName
${updateContactInfo.lname}    id=customer.lastName
${updateContactInfo.address}    id=customer.address.street
${updateContactInfo.city}    id=customer.address.city
${updateContactInfo.state}    id=customer.address.state
${updateContactInfo.zip}    id=customer.address.zipCode
${updateContactInfo.phone}    id=customer.phoneNumber
${updateContactInfo.updateProfile_button}    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/table/tbody/tr[8]/td[2]/input

${updateContactInfo.fname.empty}    id=firstName-error
${updateContactInfo.lname.empty}    id=lastName-error
${updateContactInfo.address.empty}    id=street-error
${updateContactInfo.city.empty}    id=city-error
${updateContactInfo.state.empty}    id=state-error
${updateContactInfo.zip.empty}    id=zipCode-error

#Request Loan Page
${requestLoanPage.loanAmount}    id=amount
${requestLoanPage.downPayment}    id=downPayment
${requestLoanPage.fromAccount}    id=fromAccountId
${requestLoanPage.applynow_button}    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/table/tbody/tr[4]/td[2]/input
${requestLoanPage.loanRequestDenied}    id=loanRequestDenied
${requestLoanPage.loanRequestApproved}    id=loanRequestApproved

