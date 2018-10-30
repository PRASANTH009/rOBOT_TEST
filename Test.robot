*** Settings ***
 	Library Process 
 	*** Keywords ***
 	Open port find
 	Run process netstat -an | find "10.6.136.123" | find "139"
 	 
 	*** Test cases ***
 	Example2 
 	Open port find
