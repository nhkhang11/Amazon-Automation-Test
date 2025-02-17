*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}         =        id=twotabsearchtextbox
${TOPNAV_NAV_SEARCH_BAR}     =        id=nav-bb-search
${TOPNAV_SEARCH_BUTTON_BB}            xpath://input[@class='nav-bb-button' and @type='submit' and @value='Go']
${TOPNAV_SEARCH_BUTTON_ID}            xpath://input[@id='nav-search-submit-button' and @type='submit' and @value='Go']

# ${TOPNAV_SEARCH_BUTTON} =           xpath=//input[@type='submit' and @value='Go' and (contains(@class,'nav-bb-button') or @id='nav-search-submit-button')]
*** Keywords ***
Search for Products
    Enter Search Items
    Submit Search

Enter Search Items
    input text                      ${TOPNAV_SEARCH_BAR}      ${SEARCH_ITEM}
    
Submit Search
    # Click Button                    ${TOPNAV_SEARCH_BUTTON}
    # click button                    xpath=//a[@id="nav-search"]/form/div[2]/div/input

    ${exists}=    Run Keyword And Return Status    Page Should Contain Element    ${TOPNAV_SEARCH_BUTTON_BB}
    Run Keyword If    ${exists}    Click Button    ${TOPNAV_SEARCH_BUTTON_BB}
    ...    ELSE    Click Button    ${TOPNAV_SEARCH_BUTTON_ID}
