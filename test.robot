*** setting ***
Library      Process


*** Test Cases ***
Internet Connectivity Ping Test
	[Documentation]		Ping Test To 8.8.8.8
	${output}=  Run Process     ping  8.8.8.8  -c  1
	Should Contain 		${Output}   64 bytes from 8.8.8.8
