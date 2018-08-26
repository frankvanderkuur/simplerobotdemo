*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Perform simple search on google
    open browser  about:blank  ${BROWSER}
    maximize browser window
    go to  https://www.google.com
    input text  id:lst-ib  Yamaha FJR 1300 Dark Blue
    press key  id:lst-ib  \\13
    wait until page contains  resultaten
    click link  link:Afbeeldingen
    sleep  5s
    close browser
