*** Settings ***
Library                                 SeleniumLibrary

*** Keywords ***
Load
        go to                           https://www.amazon.com/ref=nav_logo

Verify Page Loaded
        wait until page contains        Amazon