tests
testSnakes
	|g snake|
	g:= GameInfo new.
	snake:= Snake new coordinates: {1@1. 1@2 }; name: 'snaki'; yourself.
	g snakes: { snake }.
	
	self assert: g snakes equals: { snake }.
	self assert: g snakes first name equals: snake name.
