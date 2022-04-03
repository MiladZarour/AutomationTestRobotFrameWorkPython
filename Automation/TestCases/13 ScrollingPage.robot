*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ScrollingTest
    set selenium speed    0.5
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    execute javascript    window.scrollTo(0,3000)
    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[77]/td[1]/img

    execute javascript    window.scrollTo(0,document.body.scrollHeight)

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)

    close browser