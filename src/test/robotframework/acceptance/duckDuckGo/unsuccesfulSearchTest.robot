*** Settings ***
Documentation  A resource file containing the application specific keywords
Library     Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${DuckDuckGo.Search.Field}    id=search_form_input_homepage
${DuckDuckGo.Search.Button}    id=search_button_homepage

*** Test Cases ***
Search in DuckDuckGo with incorrect spelling
    Given Browser is opened to DuckDuckGo page
    When User searches Scarlet Johanson
    Then Results contain suggestions for other searches

*** Keywords ***
Browser is opened to DuckDuckGo page
    Open Browser    http://www.duckduckgo.com  chrome

User searches Scarlet Johanson
    Wait Until Element Is Visible    ${DuckDuckGo.Search.Field}    5
    Input Text  ${DuckDuckGo.Search.Field}    Scarlet Johanson
    Click Element    ${DuckDuckGo.Search.Button}

Results contain suggestions for other searches
    Wait Until Page Contains    Including results for
    Wait Until Page Contains    Search only for