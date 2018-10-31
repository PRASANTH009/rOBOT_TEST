*** setting ***

Suite Teardown    Terminate All Processes    kill=True

*** Variables ***
${result}=  [0]


*** Keywords ***



*** Test Cases ***
Internet Connectivity Ping Test
  [Documentation]		Ping Test To 8.8.8.8
  ${output}=  Run Process  ping  8.8.8.8  -c  1
  Should Contain  ${output.stdout}  64 bytes from 8.8.8.8
  
  
Remote sever port checking 
  [Documentation]  Checking port on remote server
  ${output}=  Run Process  nmap  -p  443  google.com
  Should Contain  ${output.stdout}  Host is up


Sever port checking 
  [Documentation]  Checking port on  server
  ${result}=  Run Process  nmap  -p  85  localhost
  Should Contain  ${result.stdout}  open
Library    Process
