tests-accessing
testText
	| b |
	b := BlButton withText: 'TESTIN text'.
	self assert: b text equals: 'TESTIN TEXT'.
	b text: 'TESTING TEXT'.
	self assert: b text equals: 'TESTING TEXT'