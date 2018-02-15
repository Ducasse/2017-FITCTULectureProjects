tests
testTransformTweetArrayToList
	| array  list |
	array := LinkedList new.
	array add: ((Dictionary new));
			add: ((Dictionary new));
			add: ((Dictionary new)).
	array := array asArray.
	list := TwitterAnalyzer instance transformTweetArrayToList: array.
	self assert: list class equals: LinkedList.
	self assert: list size equals: 3.
	self assert: (list at: 1) class equals: Tweet.