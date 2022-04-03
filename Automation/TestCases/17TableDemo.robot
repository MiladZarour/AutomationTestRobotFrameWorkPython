*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    #getting the rows number
    ${rows}=    get element count    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr
    #getting the col number
    ${col}=     get element count    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${col}

    #getting the text of a specifiec row col
    ${data}=    get text    xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[5]/td[1]
    log to console    ${data}

    #Validate the table
    #Veryfying if the second col is "Author" or not(we need to pass 3 Arguments, table , what col number , what should have)
    table column should contain    xpath://table[@name='BookTable']     2   Author
    #Verfying if the row number 4 should contain Learn JS
    table row should contain    xpath://table[@name='BookTable']     4   Learn JS
    #Verfying Cell in table:
    table cell should contain    xpath://table[@name='BookTable']     5   2     Mukesh
    #Vergying header what should contain
    table header should contain      xpath://table[@name='BookTable']       BookName



    close browser