tests
testAsJson
	|s|
	s:= StartRequest new.
	s width: 20.
	s height: 20.
	s gameId:   100.	
	self assert: s asJson equals: '{"gameId":100,"height":20,"width":20}'.