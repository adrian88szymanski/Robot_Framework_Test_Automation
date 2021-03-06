*** Settings ***
Library  SeleniumLibrary
Library  String
Library  Process
Resource    ../Tests/Amazon.robot

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    close browser

Insert Testing Data
    Custom Keywords 1
    Custom Keywords 2

Cleaning Testing Data
    log  I am cleaning up the test data...

Custom Keywords 1
    log  Doing keyword 1

Custom Keywords 2
    log  Doing keyword 2