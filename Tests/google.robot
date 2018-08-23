*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Perform simple search on google
    open browser  about:blank  chrome
    maximize browser window
    go to  https://www.google.com
    input text  id:lst-ib  Yamaha FJR 1300 Dark Blue
    press key  id:lst-ib  \\13
    wait until page contains  resultaten
    click link  link:Afbeeldingen