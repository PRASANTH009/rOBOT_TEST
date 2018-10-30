*** setting ***
Library    SSHLibrary
Suite Setup    Open Connection
Suite Teardown    Close All Connections
*** Variables ***
${HOST}      127.0.0.1


*** Keywords ***
Open Connection   ${HOST}


*** Test Cases ***
Internet Connectivity Ping Test
	[Documentation]		Ping Test To 8.8.8.8
	${output}=              Execute Command   ping  8.8.8.8  -c  1
	Should Contain 		${Output}    64 bytes from 8.8.8.8
