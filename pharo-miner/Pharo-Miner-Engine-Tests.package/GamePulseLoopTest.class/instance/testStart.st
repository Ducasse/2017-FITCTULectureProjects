tests
testStart
	| pl pr |
	pl := GamePulseLoop new.
	testnum := 0.
	pl pulseBlock: [ testnum := testnum + 1. testnum > 10 ifTrue: [ pl loopProcess terminate ] ].
	pl pulsePeriod: 10.
	pl start.
	self assert: pl running.
	pr := pl loopProcess.
	pl start.
	self assert: pl loopProcess equals: pr.
	[[ pl running ] whileTrue: [ (Delay forMilliseconds: 11) wait ]] value.
	self assert: testnum equals: 11