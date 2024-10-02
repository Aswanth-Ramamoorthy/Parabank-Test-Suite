*** Variables ***

#General

${url}    https://parabank.parasoft.com/parabank/index.htm
${browser}    firefox
${empty}    

${accountNumber_RowIndex}    1    # Replace '1' with the appropriate index value

#Customer Registration

${customerRegistrationPage.fname}    crypt:siK1f6avUcC3V23siXY2cO/X17G4WQkdZ0rm/P8IVkDpTQVEphmySWxlE4yU5fbhHnoN=
${customerRegistrationPage.lname}    crypt:77XYiAksgPkPObZuYOP/4ahmgV4nkJoe3sAjUOT8EzoBsJY1W0SkPwYEq8eEZN/kxBtzfsA=
${customerRegistrationPage.address}    crypt:3Gidb7KorxC1UvuswEtDQ3Zese8rUUXbgaSJFnr+x1aIXgkHwFK+JfVDyYMqHj6tTXnUX5j7YkGlaF0=
${customerRegistrationPage.city}    crypt:KDcoKWTlyqu7iW4fH0Dhm9GC6rTNVrQxCQORwspM/zPg9nBhnf8APi7CeD8oP4cIFICFkK3V=
${customerRegistrationPage.state}    crypt:16IEa1UhC/BNE5N1PGh/Ygime285o5IapQL2madycX66t1mtuVrYnhU9lgMCj89ZhCg=
${customerRegistrationPage.zip}    crypt:Q4lNk24PWc95H7MhLz14KZGJAamzfBZ/Hp/NO3vHmzVg2B8vZW6WuvLQInjFjn8NA1IIde4=
${customerRegistrationPage.phone}    crypt:wsuy1MCpPvilgEZnajBEXtazkJ/NQMtr0tRN0q0i1TtYAKSDvokFABAaBwTXAa+3Dv9hETqYCKDsTtiT=
${customerRegistrationPage.ssn}    crypt:RiOOu9Sq8hqvAtblyuIQrlnsow3Zz1fdYdXyiKkHNSX4GSl7Fs2ieL6I3NIee1SrGTFDWu7JOE2aUQE=
${customerRegistrationPage.uname}    crypt:VbzB1bCO9sglMlLznm/i/Mrbmvr5nBqiMsUCHVIcYGb/dE5AsLELw26n736r4W/aKPn5dS5ivfc2rPg=
${customerRegistrationPage.pwd}    crypt:5jlEqQEIiua9w3aQ5Y8/5pUuKCNtW5gnOVbutcmvbhhaMN1fx+6mMZy/ZZLEMDWXkdEauJs=
${customerRegistrationPage.cpwd}    crypt:5jlEqQEIiua9w3aQ5Y8/5pUuKCNtW5gnOVbutcmvbhhaMN1fx+6mMZy/ZZLEMDWXkdEauJs=

#Invalid Customer Login Info
${invalidCustomer.uname}    xen
${invalidCustomer.pwd}    xen
${emptyCustomer.uname}
${emptyCustomer.pwd}
#Invalid Customer Registration Info

${invalidCustomerLookup.fname}    zebra
${invalidCustomerLookup.lname}    zebra
${invalidCustomerLookup.address}    zebra
${invalidCustomerLookup.city}    zebra
${invalidCustomerLookup.state}    zebra
${invalidCustomerLookup.zip}    zebra
${invalidCustomerLookup.phone}    zebra
${invalidCustomerLookup.ssn}    zebra

#Transfer Funds

${smallAmount}    10
${largeAmount}    10000

#Bill Payment Service
${BillPayee.payeeName}    John
${BillPayee.address}    123 Main St
${BillPayee.city}    Denver
${BillPayee.state}    CO
${BillPayee.zip}    80202
${BillPayee.phone}    303-555-1234
${BillPayee.account}    12345
${BillPayee.verifyAccount}    12345
${BillPayee.amount}    100


${BillPayee.account.invalid}    +++---
${BillPayee.verifyAccount.invalid}    +++---
${BillPayee.amount.invalid}    @100

#Find Transactions

${transactionID.Valid}    123456
${transactionID.Invalid}    ---+++
${transactionDate.Valid}    01/01/2019
${transactionDate.Invalid}    11-12-2019
${transactionDate.fromDate.Valid}    01/01/2019
${transactionDate.toDate.Valid}    01/31/2019
${transactionDate.fromDate.Invalid}    11-01-2019
${transactionDate.toDate.Invalid}    11-30-2019
${transactionAmount.Valid}    100
${transactionAmount.Invalid}    @1000


#Update Profile

${updateProfile.fname}    Nick
${updateProfile.lname}    Johnson
${updateProfile.address}    456 Elm St
${updateProfile.city}    Boulder
${updateProfile.state}    CO
${updateProfile.zip}    80301
${updateProfile.phone}    303-555-1234

#Request Loan
${loanAmount.valid}    100
${loanAmount.invalid}    100000
${downPayment.valid}    10
${downPayment.invalid}    1000