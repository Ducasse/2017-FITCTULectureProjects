tests
testWait
	| pl t |
	pl := GamePulseLoop new.
	pl pulsePeriod: 30.
	t := Time millisecondClockValue.
	pl pulseStartTime: Time millisecondClockValue.
	pl wait.
	self assert: (Time millisecondsSince: t) > 29
	
	
	