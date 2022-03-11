*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework 
	[Timeout]   ${TIMEOUT}
	# Let's select the location
	Page should contain element  id:headlessui-listbox-button-1
	Click Element  id:headlessui-listbox-button-1	
	Page should contain element  id:Bali
	Click Element  id:Bali	
	Log To Console	Location is selected as Bali.
		
	# Let's select the number of guests
	Page should contain element  id:headlessui-listbox-button-5		
	Click Element  id:headlessui-listbox-button-5
	Page should contain element  id:2	
	Click Element  id:2
	Log To Console 	Number of guests are selected.

	# Searching for the results
	Page should contain element  xpath: //*[@id="search"]
	Click Element	xpath: //*[@id="search"]
	
	# Let's select one of the hotels for booking
	Wait Until Element Is Visible 	id:reserve-now
	Click button	id:reserve-now
	Wait Until Element Is Visible 	id:proceed
	Click button	id:proceed
	Log To Console	Booking is confirmed.

	# Let's download the invoice
	Wait Until Element Is Visible 	id:invoice
	Click button	id:invoice
	Log To Console	Tests are run successfully!
