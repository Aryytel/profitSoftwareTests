*** Settings ***
Documentation  A resource file containing the application specific keywords
Library     Selenium2Library
Test Teardown   Close Browser8


*** Variables ***


*** Test Cases ***

Open sidebar
    Given Browser is opened to DuckDuckGo page
    When Sidebar button is pressed
    Then Sidebar menu is opened

*** Keywords ***

Browser is opened to DuckDuckGo page
    Open Browser    http://start.duckduckgo.com  chrome

Sidebar button is pressed
    Click Element   xpath=//*[@id="pg-index"]/div[1]/div[1]/div/a

Sidebar menu is opened
   Wait Until Page Not Contains     xpath=//*[@id="pg-index"]/div[1]/div[4]/ul/ul[1]/li[2]/ul/li[4]