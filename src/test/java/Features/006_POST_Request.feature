Feature: Create user using post api

  Background:
    * url baseUrl
    * def requestPayload =
	"""
	{
        "name": "Jerry",
        "email": "jerry06@gmail.com",
        "gender": "male",
        "status": "active"
    }
	
	"""

  Scenario: Create a user with the given data
    Given path '/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer '+tokenID
    When method post
    Then status 201
    And match response contains { id : '#present'}
    And match response contains { name : '#present'}
    And match response contains { name : 'Jerry'}
    And match response contains { email : 'jerry06@gmail.com'}
    * print response