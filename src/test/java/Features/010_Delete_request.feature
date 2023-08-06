Feature: Create and delete an API ID

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

    * def requestPayload = read('classpath:src/test/resources/payload/user.json')

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
    And match response contains { name : 'Jerry'}

# Get API ID
    * def userId = response.id

    * print userId

## Delete 
    Given path '/public/v2/users/'+ userId
    And header Authorization = 'Bearer '+tokenID
    When method delete
    Then status 204

## GET request
    Given url baseUrl+'/public/v2/users'
    And path userId
    When method GET
    Then status 404

