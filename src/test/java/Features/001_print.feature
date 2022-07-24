Feature: Print a values
  I want to print the values

  @PrintHelloWorls
  Scenario: Print Hello world
    * print 'Hello World'
    
  @AddTwoValues
  Scenario: Add two values
  * def a = 10
  * def b = 20
  * print 'the added value is ' + (a+b)
  
  
  @PrintJsonObj
  Scenarios: Print Simple Json Array

* def jsonObj = 
"""
{
 "name" : "Boobal"
 "City" : "Namakkal"
 "Age" : 24
} 
"""

* print jsonObj

