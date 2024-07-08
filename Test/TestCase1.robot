*** Settings ***
Documentation    This is my first test case
Library     OperatingSystem  

*** Keywords ***
Log In My Username
    Log       ${DICTIONARY}'\[username]'

*** Variables ***
${MY-VARIABLE}        My Test Variable

${GOOGLE-SEARCH-FIELD}     //input[@title="search2"]

@{LIST}     test1    test2     test3     test4

${DICTIONARY}     username=testuser     password=demo

*** Test Cases ***
TEST 
    [Tags]  demo
    Log In My Username
    Log       ${DICTIONARY}'\[password]'
    Log       ${MY-VARIABLE}
    Log       ${GOOGLE-SEARCH-FIELD}
    Log       ${LIST}[2]
