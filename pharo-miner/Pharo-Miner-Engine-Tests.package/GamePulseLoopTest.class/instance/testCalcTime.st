tests
testCalcTime
	| pl t |
	pl := GamePulseLoop new.
	t := Time millisecondClockValue.
	pl pulseStartTime: t.
	pl calcTime.
	self assert: pl deltaTime closeTo: 0.
	self assert: pl pulseStartTime closeTo: t.
	
	