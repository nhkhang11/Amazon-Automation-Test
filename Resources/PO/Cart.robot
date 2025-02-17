*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Verify Product Added
    wait until page contains        Added to cart

Proceed to Checkout
    Click Button                    xpath://input[@name="proceedToRetailCheckout"]