Feature: Print json values

  @PrintSimple
  Scenario: Print Simple Json Array

    * def jsonObject =
"""
[
{
"name" : "Boobal",
"city" : "Namakkal",
"age"  : 24
},
{
"name" : "Alagesan",
"city" : "Salem",
"age"  : 47
}
]
"""
    * print jsonObject
    * print  'name is ' + (jsonObject[1].name) + ' City is ' + (jsonObject[1].city)

  @PrintComples
  Scenario: Print Complex Json Array

    * def jsonObj =
"""
{
	"id": "0001",
	"tyfpe": "donut",
	"name": "Cake",
	"ppu": 0.55,
	"batters":
		{
			"batter":
				[
					{ "id": "1001", "type": "Regular" },
					{ "id": "1002", "type": "Chocolate" },
					{ "id": "1003", "type": "Blueberry" },
					{ "id": "1004", "type": "Devil's Food" }
				]
		},
	"topping":
		[
			{ "id": "5001", "type": "None" },
			{ "id": "5002", "type": "Glazed" },
			{ "id": "5005", "type": "Sugar" },
			{ "id": "5007", "type": "Powdered Sugar" },
			{ "id": "5006", "type": "Chocolate with Sprinkles" },
			{ "id": "5003", "type": "Chocolate" },
			{ "id": "5004", "type": "Maple" }
		]
}
"""
    * print jsonObj
    * print jsonObj.topping
		
