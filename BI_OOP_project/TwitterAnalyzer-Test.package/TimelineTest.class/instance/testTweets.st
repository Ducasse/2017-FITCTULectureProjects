tests
testTweets
	|ti list|
	ti := Timeline new.
	list := LinkedList new.
	list add: (Status new status: 'ahoj').
	list add: (Status new status: 'cus').
	list add: (Status new status: 'zdar').
	ti fromList: list.
	
	self assert: ti tweets class equals: Array.
	self assert: ti tweets size equals: 3.
	self assert: (ti tweets at: 1) status equals: 'ahoj'.