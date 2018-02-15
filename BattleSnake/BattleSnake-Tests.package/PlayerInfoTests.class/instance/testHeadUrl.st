tests
testHeadUrl
	|s|
	s := PlayerInfo new.
	s headUrl:  'http://images.com/pixel.jpg'.
	self assert: s headUrl equals: 'http://images.com/pixel.jpg'.