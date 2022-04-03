*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    #Right Click/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu    xpath:/html/body/div/section/div/div/div/p/span
    sleep   0.5

    #Double click action
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep   0.5

    #Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    box106
    sleep    0.3
    drag and drop    id:box1    box101
    sleep    0.3

    close browser
