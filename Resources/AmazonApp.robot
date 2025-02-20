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
    SignIn.Fill "Email" Field             bogus@bogus.com
    SignIn.Fill "Password" Field          badPassword
    SignIn.Click "Sign In" Button

Search For Product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Load

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify SignIn

#    page should contain element     id=ap_signin1a_pagelet_title
#    element text should be          id=ap_signin1a_pagelet_title       Sign In
