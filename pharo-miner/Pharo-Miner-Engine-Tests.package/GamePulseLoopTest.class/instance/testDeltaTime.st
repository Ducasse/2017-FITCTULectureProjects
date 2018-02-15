tests
testDeltaTime
	| pl |
	pl := GamePulseLoop new.
	testnum := 0.
	pl pulseBlock: [ testnum := testnum + 1.
							testnum > 20 ifTrue: [ pl loopProcess terminate ] ].
	pl pulsePeriod: 10.
	pl start.
	(Delay forMilliseconds: 30) wait.
	self assert: (pl deltaTime between: 0.009 and: 0.015).
	(Delay forMilliseconds: 30) wait.
	self assert: (pl deltaTime between: 0.009 and: 0.015).
	(Delay forMilliseconds: 30) wait.
	self assert: (pl deltaTime between: 0.009 and: 0.015).
	pl loopProcess terminate.