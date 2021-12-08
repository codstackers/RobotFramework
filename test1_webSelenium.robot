*** Settings ***
Documentation  This is 1st test by robot
Library  Selenium2Library

*** Variables ***

${browserC}  chrome
${url}  https://www.mtvuutiset.fi/


*** Test Cases ***
Auto1 Open browser and navigate to google.com

    [Documentation]  this test that user can open google page  #comment
    [Tags]  Beginner level
    [Setup]  
    [Teardown]
    [Timeout]
      
    open browser  ${url}  ${browserC}
    sleep  2
    click button  id:onetrust-accept-btn-handler
    maximize browser window  

    click element  xpath://*[@id="top"]/div[3]/header/nav/div[1]/div/button
    click element  xpath://*[@id="top"]/div[3]/header/nav/div[2]/div/div[1]/div[2]/ul/li[3]/a
    click element  xpath://*[@id="weather-data"]/div/div/span[2]
    
    input text  id:frm-search  Turku
    press keys  none  ENTER
    sleep  2
    capture page screenshot
    close browser     

Auto2 Navigate to nettiauto.com
    [Documentation]  this test that user can navigate to nettiauto.com
    [Tags]  Level 2

    open browser  https://www.nettiauto.com  chrome
    sleep  2
    click button  id:almacmp-modalConfirmBtn
    sleep  2
    click link  id:ut_loginLink
    sleep  2
    input text  name:loginid  Hasenen
    sleep  2
    input text  name:passwd  aliali
    sleep  2
    click element  xpath://*[@id="frmMainLogin"]/div[2]/div[1]/div[2]/div
    sleep  1
    capture page screenshot 
    click button  id=everDisplayLogin
    sleep  5
    close browser

*** Keywords ***
