Feature: Validating Place API's
@AddPlace @Regression1
Scenario Outline: Verify if Place is being Succesfully added using AddPlaceAPI
	# Request specification on line for Given STEP
	Given Add Place Payload with "<name>"  "<language>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	# Below step is to get the response
	And verify place_Id created maps to "<name>" using "getPlaceAPI" 
	
Examples:
	|name 	 | language |address		   |
	|AAhouse |  English |World cross center|
#	|BBhouse | Spanish  |Sea cross center  |

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working
	# Request specification on line for Given STEP
	Given DeletePlace Payload 
	When user calls "deletePlaceAPI" with "POST" http request
	Then the API call got success with status code 200
	And "status" in response body is "OK"
	 


	

	
	
	
	
	
	

	
	
	