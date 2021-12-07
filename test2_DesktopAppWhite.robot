*** Settings ***
Library  WhiteLibrary

*** Test Cases ***
Open notepad
  Launch application  C:\\windows\\system32\\notepad.exe
  Attach window  Untitled - Notepad
  Press keys  this is my name Hasenen AHMAD 
  Double click item  id:15  #Automation id 15 is for Notepad text field
  Right click item  id:15
  Click item in popup menu  Copy
  Hold special key  CONTROL  #Remember always to LEAVE the special key after use
  Press keys  vvvv
  Leave special key  CONTROL
  ${notepadTextFieldContentCopied} =  Get text from text box  id:15
  Should be equal  ${notepadTextFieldContentCopied}  this is my name Hasenen AHMADAHMADAHMADAHMAD