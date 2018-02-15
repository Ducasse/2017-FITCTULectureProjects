tests
testFoodIsFinish
	|foodTile|
	foodTile := FoodTile new.
	self assert: foodTile isFinish.