tests
testCreation
	| tmp |
	tmp := LevelPos newAt: 1 @ 2 on: nil.
	self assert: tmp r equals: 1.
	self assert: tmp c equals: 2.
	self assert: tmp point equals: 1 @ 2