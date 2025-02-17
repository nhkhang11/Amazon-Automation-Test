*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Verify Search Completed
        wait until page contains        results for "${SEARCH_ITEM}"

Click Product Link
        [Documentation]                 Clicks on the first product in the search result list
        click element                   ${FIRST_RESULT}
