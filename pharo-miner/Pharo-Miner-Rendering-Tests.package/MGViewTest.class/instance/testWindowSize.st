tests
testWindowSize
	self assert: MGView basicNew windowSize equals: 800 @ 600.
	GamePulseLoop allInstancesDo: #stop.