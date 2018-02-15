tests
testFromList
	|tb list|
	tb := Timeline new.
	list := LinkedList new.
	list add: (Tweet new status: 'ahoj').
	list add: (Tweet new status: 'cus').
	list add: (Tweet new status: 'zdar').
	tb fromList: list.
	
	self assert: tb tweets size equals: 3.