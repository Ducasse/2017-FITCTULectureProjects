tests
testLoopProcess
	| pl b |
	pl := GamePulseLoop new.
	b := Process new.
	pl loopProcess: b.
	self assert: pl loopProcess equals: b.