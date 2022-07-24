
Feature: UPdate user using PUT request

Background:
	* url baseUrl
	* def requestPayload = 
	"""
	{
        "status": "inactive"
    }
	
	"""
Scenario: Create a user with the given data
Given path '/public/v2/users/30'
And request requestPayload
And header Authorization = 'Bearer '+tokenID
When method put
Then status 200
And match response contains { id : '#present'}
And match response contains { name : '#present'}
And match response contains { name : 'Rajinder Kaul'}
And match response contains { status: 'inactive'}
* print response  