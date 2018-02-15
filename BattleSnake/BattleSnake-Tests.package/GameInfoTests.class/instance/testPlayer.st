tests
testPlayer
	|g playerSnake|
	g:= GameInfo new.
	playerSnake:= Snake new coordinates: {1@1. 1@2 }; name: 'snaki'; yourself.
	g player: playerSnake .
	
	self assert: g player equals: playerSnake .
