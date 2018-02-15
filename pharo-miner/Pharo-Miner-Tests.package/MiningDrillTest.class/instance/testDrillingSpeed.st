tests
testDrillingSpeed
	|drill|
	drill := MiningDrill new.
	self assert: drill drillingSpeed equals: 10.
	drill drillingSpeed: 1561.
	self assert: drill drillingSpeed equals: 1561.
	drill drillingSpeed: 167.
	self assert: drill drillingSpeed equals: 167.
		