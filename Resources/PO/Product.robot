*** Settings ***
Library                             SeleniumLibrary

*** Keywords ***
Verify Page Load
    wait until page contains        Roll over image to zoom in

Add to Cart
    click button                    id=add-to-cart-button