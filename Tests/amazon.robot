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
${LOGIN_EMAIL}            khang.nguyenhuy0402@gmail.com
${LOGIN_PASSWORD}         04022001

*** Test Cases ***
Should be able to login
    AmazonApp.Login                 ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

User can search for product
    [Documentation]                 This is Search for Product TEST
    [Tags]                          Current
    AmazonApp.Search For Product

User can search and view product
    [Documentation]                 This is Search and View Product TEST
    [Tags]                          Current
    AmazonApp.Search For Product
    AmazonApp.Select Product from Search Results

User can add product to cart
    [Documentation]                 This is Add Product to Cart TEST
    [Tags]                          Smoke
    AmazonApp.Search For Product
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

User must sign in to checkout
    [Documentation]                 This is Sign In to Checkout TEST
    [Tags]                          Smoke
    AmazonApp.Search For Product
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


