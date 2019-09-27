*** Settings ***
Documentation     A test suite with a single test for valid wikipedia search.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Wikipedia Test
    Open Browser To Wiki Page
    Input Search  Hello World
    Submit Search
    Hello World Page Should Be Open
    [Teardown]    Close Browser
