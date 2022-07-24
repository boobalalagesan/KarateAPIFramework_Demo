Feature: Sample get request API

  Scenario: Get response and check status code 200 OK
    Given url baseUrl+'/public/v2/users'
    And path '30'
    When method GET
    Then status 200
    * print response
    * def jo = response
    * def actname = jo.name 
    * match actname == 'Rajinder Kaul'
    
    Scenario: Get response and check status code 404 OK
    Given url baseUrl+'/public/v2/users'
    And path '1'
    When method GET
    Then status 404
    * print response 
    * def jo = response
    * print jo
    

 