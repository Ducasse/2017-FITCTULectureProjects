tests
testRunning
	| pl |
	pl := GamePulseLoop new.
	self assert: pl running not.
	pl loopProcess: Process new.
	self assert: pl running not.
	pl loopProcess: [ 10 timesRepeat: [Processor yield] ] newProcess.
	self assert: pl running.
	pl loopProcess terminate.
	self assert: pl running not