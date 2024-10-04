*** Settings ***
Library    Process
Library    ../../Scripts/robot_runner.py

*** Test Cases ***

Test Suites
    [Documentation]    Run test suites in order
    Run Robot Suite    suite_name=TS1_User_Registration
    Run Robot Suite    suite_name=TS2_Customer_Lookup
    Run Robot Suite    suite_name=TS3_Login
    Run Robot Suite    suite_name=TS4_Account_Opening
    Run Robot Suite    suite_name=TS5_Account_Overview
    Run Robot Suite    suite_name=TS6_Fund_Transfer
    Run Robot Suite    suite_name=TS7_Bill_Payment
    Run Robot Suite    suite_name=TS8_Find_Transactions
    Run Robot Suite    suite_name=TS9_Update_Contact_Info
    Run Robot Suite    suite_name=TS10_Request_Loan
