*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browsers
Test Template    Invalid Login
Test Template    Valid Login


*** Test Cases ***
Right user empty pwd        admin@yourstore.com          ${EMPTY}
Right user wrong pwd        admin@yourstore.com          xyz
Wrong user right pwd        admin@yousrstore.com         admin
Wrong user empty pwd        admin@syourstore.com         ${EMPTY}
Wrong user wrong pwd        adsmin@yourstore.com         admin




*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login button
    Error message should be visible