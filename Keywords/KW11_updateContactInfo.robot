*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/elements.resource
Resource    ../Resources/variables.resource
Resource    ../Resources/messages.resource

*** Keywords ***
Update Profile Info
    [Documentation]    Update the profile information with valid details.
    ...               Steps:
    ...               1. Click on the "Update Contact Info" link.
    ...               2. Enter valid details for the profile (first name, last name, address, city, state, zip, phone).
    ...               3. Click the update profile button.
    ...               4. Verify that the profile update is successful and the correct confirmation message is displayed.
    Click Element    ${accountServicesPage.UpdateContactInfo}
    Input Text    ${updateContactInfo.fname}    ${updateProfile.fname}
    Input Text    ${updateContactInfo.lname}    ${updateProfile.lname}
    Input Text    ${updateContactInfo.address}    ${updateProfile.address}
    Input Text    ${updateContactInfo.city}    ${updateProfile.city}
    Input Text    ${updateContactInfo.state}   ${updateProfile.state}
    Input Text    ${updateContactInfo.zip}   ${updateProfile.zip}
    Input Text    ${updateContactInfo.phone}     ${updateProfile.phone}
    Click Element    ${updateContactInfo.updateProfile_button}
    Wait Until Page Contains    ${updateContactInfo.success}    timeout=10s
    Wait Until Page Contains    ${updateContactInfo.successMessage}    timeout=10s

Update Profile Info with empty fields
    [Documentation]    Update the profile information with empty fields.
    ...               Steps:
    ...               1. Click on the "Update Contact Info" link.
    ...               2. Leave all fields empty.
    ...               3. Click the update profile button.
    ...               4. Verify that appropriate error messages are displayed for the empty fields.
    Click Element    ${accountServicesPage.UpdateContactInfo}
    Input Text    ${updateContactInfo.fname}    ${empty}
    Input Text    ${updateContactInfo.lname}    ${empty}
    Input Text    ${updateContactInfo.address}    ${empty}
    Input Text    ${updateContactInfo.city}    ${empty}
    Input Text    ${updateContactInfo.state}   ${empty}
    Input Text    ${updateContactInfo.zip}   ${empty}
    Input Text    ${updateContactInfo.phone}     ${empty}
    Click Element    ${updateContactInfo.updateProfile_button}
    Wait Until Page Contains Element    ${updateContactInfo.fname.empty}   timeout=10s
    Wait Until Page Contains Element    ${updateContactInfo.lname.empty}    timeout=10s
    Wait Until Page Contains Element    ${updateContactInfo.address.empty}    timeout=10s
    Wait Until Page Contains Element    ${updateContactInfo.city.empty}    timeout=10s
    Wait Until Page Contains Element    ${updateContactInfo.state.empty}    timeout=10s
    Wait Until Page Contains Element    ${updateContactInfo.zip.empty}    timeout=10s

