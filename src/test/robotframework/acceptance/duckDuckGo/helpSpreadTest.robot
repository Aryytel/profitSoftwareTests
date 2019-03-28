*** Settings ***
Documentation  A resource file containing the application specific keywords
Library     Selenium2Library
Test Teardown   Close Browser

*** Test Cases ***

Click embedded link "Help Spread DuckDuckGO"
    Given Browser is opened to DuckDuckGo page
    When Link "Help Spread DuckDuckGO" is pressed
#    Then Result is "Friends Don't Let Friends Get Tracked!" page

*** Keywords ***

Browser is opened to DuckDuckGo page
    Open Browser    http://start.duckduckgo.com  chrome

Link "Help Spread DuckDuckGO" is pressed
    Click Link   xpath=//*[@id="content_homepage"]/div/div[3]/div/div/span/a

Result is "Friends Don't Let Friends Get Tracked!" page
    Wait Until Page Contains    We’re setting the new standard of trust online.