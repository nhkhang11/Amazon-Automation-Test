*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR1}                  id=twotabsearchtextbox
${TOPNAV_SEARCH_BAR2}                  id=nav-bb-search
${TOPNAV_SEARCH_BUTTON_BB}             xpath://input[@class='nav-bb-button' and @type='submit' and @value='Go']
${TOPNAV_SEARCH_BUTTON_ID}             xpath://input[@id='nav-search-submit-button' and @type='submit' and @value='Go']

# ${TOPNAV_SEARCH_BUTTON} =           xpath=//input[@type='submit' and @value='Go' and (contains(@class,'nav-bb-button') or @id='nav-search-submit-button')]
*** Keywords ***
Search for Products
    Enter Search Items
    Submit Search

Enter Search Items
   
    ${exists_bb}=    Run Keyword And Return Status    Page Should Contain Element    ${TOPNAV_SEARCH_BAR2}
    ${exists_tb}=    Run Keyword And Return Status    Page Should Contain Element    ${TOPNAV_SEARCH_BAR1}
    Run Keyword If    ${exists_bb}    Input Text    ${TOPNAV_SEARCH_BAR2}    ${SEARCH_ITEM}
    ...    ELSE IF    ${exists_tb}    Input Text    ${TOPNAV_SEARCH_BAR1}    ${SEARCH_ITEM}
    ...    ELSE    Fail    Neither search box (nav-bb-search or twotabsearchtextbox) was found.

Submit Search

    ${exists}=    Run Keyword And Return Status    Page Should Contain Element    ${TOPNAV_SEARCH_BUTTON_BB}
    Run Keyword If    ${exists}    Click Button    ${TOPNAV_SEARCH_BUTTON_BB}
    ...    ELSE    Click Button    ${TOPNAV_SEARCH_BUTTON_ID}