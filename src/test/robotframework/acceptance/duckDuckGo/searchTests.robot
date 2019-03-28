*** Settings ***
Documentation  A resource file containing the application specific keywords
Library     Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${DuckDuckGo.Search.Field}    id=search_form_input_homepage
${DuckDuckGo.Search.Button}    id=search_button_homepage

*** Test Cases ***
Search in DuckDuckGo with correct spelling
    Given Browser is opened to DuckDuckGo page
    When User searches Scarlett Johansson
    Then Results contain Scarlett Johansson's IMDb page

Search in DuckDuckGo with incorrect spelling
    Given Browser is opened to DuckDuckGo page
    When User searches Scarlet Johanson
    Then Results contain suggestions for other searches

Click embedded link "Help Spread DuckDuckGO"
    Given Browser is opened to DuckDuckGo page
    When Link "Help Spread DuckDuckGO" is pressed
    Then Result is "Friends Don't Let Friends Get Tracked!" page

*** Keywords ***
Browser is opened to DuckDuckGo page
    Open Browser    http://start.duckduckgo.com  chrome

User searches Scarlett Johansson
    Wait Until Element Is Visible    ${DuckDuckGo.Search.Field}    5
    Input Text  ${DuckDuckGo.Search.Field}    Scarlett Johansson
    Click Element    ${DuckDuckGo.Search.Button}

Results contain Scarlett Johansson's IMDb page
    Wait Until Page Contains    Scarlett Johansson - IMDb
    Page Should Contain Link    link=https://www.imdb.com/name/nm0424060/

User searches Scarlet Johanson
    Wait Until Element Is Visible    ${DuckDuckGo.Search.Field}    5
    Input Text  ${DuckDuckGo.Search.Field}    Scarlet Johanson
    Click Element    ${DuckDuckGo.Search.Button}

Results contain suggestions for other searches
    Wait Until Page Contains    Including results for
    Wait Until Page Contains    Search only for

Link "Help Spread DuckDuckGO" is pressed
    Click Link   xpath=//*[@id="content_homepage"]/div/div[3]/div/div/span/a

Result is "Friends Don't Let Friends Get Tracked!" page
    Wait Until Page Contains    We’re setting the new standard of trust online.