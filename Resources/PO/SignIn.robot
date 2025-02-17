*** Settings ***
Library         SeleniumLibrary

*** Variables ***
#${MAIN_HEADING} = xpath=//*[@id="authportal-main-section"]/div[2]/div[2]/div[1]/form/div/div/div/h1
${SIGNIN_MAIN_HEADING} = xpath=//h1

*** Keywords ***
Verify SignIn
#    page should contain element         ${SIGNIN_MAIN_HEADING}
#    element text should be              ${SIGNIN_MAIN_HEADING}  Sign In
    wait until page contains             Sign in
Login With Valid Credentials
    [Arguments]                         ${Username}     ${Password}
    Fill Email Field                    ${Username}
    Fill Password Field                 ${Password}
    Click Submit Button

Fill Email Field
    [Arguments]                         ${Username}
    log                                 Filling Email field with ${Username}
Fill Password Field
    [Arguments]                         ${Password}
    log                                 Filling Password field with ${Password}
Click Submit Button
    Log                                 Clicking submit button