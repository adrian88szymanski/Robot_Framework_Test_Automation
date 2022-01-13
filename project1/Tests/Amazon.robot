*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    #wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  id=nav-search-submit-button
    wait until page contains  results for "Ferrari 458"
    click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/h2/a
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

    click link  xpath=/html/body/div[1]/div[2]/div/div[1]/div[2]/div/span[2]/span/a
    page should contain element  ap_signin1a_pagelet_title
    element text should be  ap_signin1a_pagelet_title  Sign In
    close browser

*** Keywords ***
