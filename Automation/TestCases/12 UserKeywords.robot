*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
TC1
   ${PageTitle}=     launchBrowser   ${url}      ${browser}
   log to console    ${PageTitle}
   log      ${PageTitle}
   input text    name:txtUsername      Admin
   input text    name:txtPassword      123admin

