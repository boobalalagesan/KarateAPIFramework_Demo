Feature: Create user using post api and create random strinf

  Background:
    * url baseUrl

    * def random_string =
	"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
		}
	"""
    * def randomString = random_string(10)
    * print randomString

    * def requestPayload =
	"""
	{
        "name": "tom",
        "gender": "male",
        "status": "active"
    }	
	"""
    * set requestPayload.email = randomString + "@gmail.com"

    * print requestPayload

  Scenario: Create a user with the given data
    Given path '/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer '+tokenID
    When method post
    Then status 201
    And match response contains { id : '#present'}
    And match response contains { name : '#present'}
    And match response contains { name : 'tom'}
#And match response contains { email: requestPayload.email}