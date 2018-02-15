tests
testCreateLoopTask
	| pl t |
	pl := GamePulseLoop new.
	testnum := 0.
	t := Time millisecondClockValue.
	pl pulseStartTime: t.
	pl pulsePeriod: 10.
	pl pulseBlock: [ testnum := testnum + 1. testnum > 10 ifTrue: [ ^ 'test' ] ].
	pl createLoopTask value.
	self assert: (Time millisecondsSince: t) > 100.
	self assert: pl deltaTime closeTo: 10.
	self assert: testnum equals: 11.
	