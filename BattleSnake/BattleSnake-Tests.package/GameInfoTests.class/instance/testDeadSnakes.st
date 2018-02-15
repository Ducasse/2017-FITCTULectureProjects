tests
testDeadSnakes
	|g snake|
	g:= GameInfo new.
	snake:= Snake new coordinates: {1@1. 1@2 }; name: 'snaki'; yourself.
	g dead_snakes: { snake }.
	
	self assert: g dead_snakes equals: { snake }.
	self assert: g dead_snakes first name equals: snake name.
