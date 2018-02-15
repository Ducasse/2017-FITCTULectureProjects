tests
testFoodCanBeAccessed
	|foodTile|
	foodTile := FoodTile new.
	self assert: foodTile canBeAccessed.