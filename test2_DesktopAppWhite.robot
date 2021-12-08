*** Settings ***
Library  WhiteLibrary

*** Test Cases ***
Open notepad
  launch application  C:\\windows\\system32\\notepad.exe
  attach window  Untitled - Notepad
  press keys  this is my name Hasenen AHMAD 
  double click item  id:15  #Automation id 15 is for Notepad text field
  right click item  id:15
  click item in popup menu  Copy
  hold special key  CONTROL  #Remember always to LEAVE the special key after use
  press keys  vvvv
  leave special key  CONTROL
  ${notepadTextFieldContentCopied} =  Get text from text box  id:15
  should be equal  ${notepadTextFieldContentCopied}  this is my name Hasenen AHMADAHMADAHMADAHMAD
  click menu button  text:File 
  click menu button  text:Save
  double click item  id:1001  #item 1001 is the filename field when saving the .txt file
  press keys  C:\\Code\\Robot Framework Projects\\Robot Test Scripts\\RobotFramework\\saved_file_by_test2.txt
  click button  id:1  #id 1 is for save button
  #Attach window  Confirm Save As
  click button  id:CommandButton_6  #Confirm yes because existing
  attach window  saved_file_by_test2.txt - Notepad
  ${textAfterSave} =  Get text from text box  id:15
  should be equal  ${notepadTextFieldContentCopied}  ${textAfterSave}
  # launch application  c:\\windows\\explorer.exe
  # sleep  10
   # attach window  File explorer
  # maximize window
  # double click item  text:Address
  # press keys  C:\\Code\\Robot Framework Projects\\Robot Test Scripts\\RobotFramework
  # Check that the created file has todays date
  close application