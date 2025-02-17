*** Settings ***
Documentation           first test
Library                 SeleniumLibrary
Resource                ../Resources/AmazonApp.robot
Resource                ../Resources/Common.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test


#robot -d results tests/amazon.robot

*** Variables ***
${BROWSER}                edge
${FIRST_RESULT}           xpath=(//h2[contains(@class, 'a-size-medium') and contains(@class, 'a-text-normal')]/span)[1]
${AMAZON_URL}             https://www.amazon.com/ref=nav_logo
${SEARCH_ITEM}            Keychron
${LOGIN_EMAIL}            admin@robotframeworktutorial.com
${LOGIN_PASSWORD}         myPassword1

*** Test Cases ***
Should be able to login
    AmazonApp.Login                 ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

User can search for product
    [Documentation]                 This is some basic TEST
    [Tags]                          Current
    AmazonApp.Search For Product
    # sleep                           10s

User must sign in to checkout
    [Documentation]                 This is some basic TEST
    [Tags]                          Smoke
    AmazonApp.Search For Product
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

    sleep                            30s



