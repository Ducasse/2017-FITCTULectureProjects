tests
testPulsePeriod
	| pl |
	pl := GamePulseLoop new.
	self assert: pl pulsePeriod equals: pl defaultPulsePeriod.
	pl pulsePeriod: 1.
	self assert: pl pulsePeriod equals: 1.
	
	