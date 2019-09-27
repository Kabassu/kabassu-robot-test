*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${PAGE URL}      https://en.wikipedia.org/
${HELLO WORLD URL}    https://en.wikipedia.org/wiki/%22Hello,_World!%22_program

*** Keywords ***
Open Browser To Wiki Page
    Open Browser    ${PAGE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Wiki Page Should Be Open

Wiki Page Should Be Open
    Title Should Be    Wikipedia, the free encyclopedia

Go To Wiki Page
    Go To    ${PAGE URL}
    Wiki Page Should Be Open

Input Search
    [Arguments]    ${search}
    Input Text    search    ${search}

Submit Search
    Click Button    go

Hello World Page Should Be Open
    Location Should Be    ${HELLO WORLD URL}
    Title Should Be    "Hello, World!" program - Wikipedia
