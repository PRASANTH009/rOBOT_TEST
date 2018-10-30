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
  ${output}=  Run Process  nmap  -p  443  google.com
