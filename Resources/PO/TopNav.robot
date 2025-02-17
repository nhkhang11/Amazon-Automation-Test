*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =              id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =           xpath=//input[@type='submit' and @value='Go' and (contains(@class,'nav-bb-button') or @id='nav-search-submit-button')]
*** Keywords ***
Search for Products
    Enter Search Items
    Submit Search

Enter Search Items
    input text                      ${TOPNAV_SEARCH_BAR}      ${SEARCH_ITEM}

Submit Search
    Click Button                    ${TOPNAV_SEARCH_BUTTON}
#    click button                    xpath=//a[@id="nav-search"]/form/div[2]/div/input
