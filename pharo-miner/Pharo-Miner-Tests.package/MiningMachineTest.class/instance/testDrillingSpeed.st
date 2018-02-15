tests
testDrillingSpeed
	|machine|
	machine := MiningMachine new.
	
	machine drillingSpeed: 100.
	self assert: machine drillingSpeed equals: 100.
	machine drillingSpeed: 18.
	self assert: machine drillingSpeed equals: 18.
	