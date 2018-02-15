tests
testInitialize
	| map |
	map := Map uniqueInstance.
	self assert: map layout class equals: BlGridLayout.