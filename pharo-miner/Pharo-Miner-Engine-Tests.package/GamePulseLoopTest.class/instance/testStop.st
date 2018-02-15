tests
testStop
	| pl |
	pl := GamePulseLoop new.
	pl stop.
	testnum := 0.
	pl loopProcess: [[ testnum < 100 ] whileTrue: [ Processor yield. testnum := testnum + 1. (Delay forMilliseconds: 11) wait ]] newProcess.
	self assert: pl running.
	pl stop.
	self assert: pl running not.