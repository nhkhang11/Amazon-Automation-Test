*** Settings ***
Library                             SeleniumLibrary
Resource                            ../Resources/PO/LandingPage.robot
Resource                            ../Resources/PO/TopNav.robot
Resource                            ../Resources/PO/SearchResults.robot
Resource                            ../Resources/PO/Product.robot
Resource                            ../Resources/PO/Cart.robot
Resource                            ../Resources/PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]         ${Username}     ${Password}
    SignIn.Login With Valid Credentials     ${Username}     ${Password}

Invalid Login
    SignIn.Fill Email Field             bogus@bogus.com
    SignIn.Fill Password Field          badPassword
    SignIn.Click Submit Button

Search For Product
    LandingPage.Load
    LandingPage.Verify Page Loaded

    TopNav.Search for Products

Select Product from Search Results
    SearchResults.Verify Search Completed
    SearchResults.Click Product Link

Add Product to Cart
    Product.Verify Page Load
    Product.Add to Cart

Begin Checkout
    Cart.Verify Product Added
    Cart.Proceed to Checkout
    SignIn.Verify SignIn

#    page should contain element     id=ap_signin1a_pagelet_title
#    element text should be          id=ap_signin1a_pagelet_title       Sign In
