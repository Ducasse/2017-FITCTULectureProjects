*DiceTest
testD6
	self assert: 3 D6 printString equals: '3D6'.
	self assert: 3 D6 diceCount equals: 3.