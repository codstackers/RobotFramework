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
  Click menu button  text:File 
  Click menu button  text:Save
  Double click item  id:1001  #item 1001 is the filename field when saving the .txt file
  Press keys  C:\\Code\\Robot Framework Projects\\Robot Test Scripts\\RobotFramework\\saved_file_by_test2.txt
  Click button  id:1  #id 1 is for save button
  #Attach window  Confirm Save As
  Click button  id:CommandButton_6  #Confirm yes because existing
  Attach window  saved_file_by_test2.txt - Notepad
  ${textAfterSave} =  Get text from text box  id:15
  Should be equal  ${notepadTextFieldContentCopied}  ${textAfterSave}
  #Launch application  c:\\windows\\explorer.exe
  #Wait until item exists  class_name:CabinetWClass  10
  #Attach Window  class_name:CabinetWClass

  #Double click item  text:Search Box
  #Press keys  C:\\Code\\Robot Framework Projects\\Robot Test Scripts\\RobotFramework
  # Check that the created file has todays date
  Close application