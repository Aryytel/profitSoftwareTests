*** Settings ***
Documentation  A resource file containing the application specific keywords
Library     Selenium2Library
Test Teardown   Close Browser


*** Variables ***


*** Test Cases ***

Open sidebar
    Given Browser is opened to DuckDuckGo page
    When Sidebar button is pressed
    Then Sidebar menu is opened

Click embedded link "Help Spread DuckDuckGO"
    Given Browser is opened to DuckDuckGo page
    When Link "Help Spread DuckDuckGO" is pressed
    Then Result is "Friends Don't Let Friends Get Tracked!" page

*** Keywords ***

Browser is opened to DuckDuckGo page
    Open Browser    http://start.duckduckgo.com  chrome

Sidebar button is pressed
    Click Element   xpath=//*[@id="pg-index"]/div[1]/div[1]/div/a

Sidebar menu is opened
   Wait Until Page Not Contains     xpath=//*[@id="pg-index"]/div[1]/div[4]/ul/ul[1]/li[2]/ul/li[4]

Link "Help Spread DuckDuckGO" is pressed
    Click Link   xpath=//*[@id="content_homepage"]/div/div[3]/div/div/span/a

Result is "Friends Don't Let Friends Get Tracked!" page
    Wait Until Page Contains    We’re setting the new standard of trust online.