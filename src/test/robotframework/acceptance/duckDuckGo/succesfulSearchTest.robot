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

*** Keywords ***
Browser is opened to DuckDuckGo page
    Open Browser    http://www.duckduckgo.com  chrome

User searches Scarlett Johansson
    Wait Until Element Is Visible    ${DuckDuckGo.Search.Field}    5
    Input Text  ${DuckDuckGo.Search.Field}    Scarlett Johansson
    Click Element    ${DuckDuckGo.Search.Button}

Results contain Scarlett Johansson's IMDb page
    Wait Until Page Contains    Scarlett Johansson - IMDb
    Page Should Contain Link    link=https://www.imdb.com/name/nm0424060/