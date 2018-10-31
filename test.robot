*** setting ***
Library    Process

*** Variables ***
# ${HOST}    127.0.0.1


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
  ${output}=  Run Process  netstat  –tlpn |  grep  80
  Should Contain  ${output.stdout}  LISTEN
