tests
testCreateLoopProcess
	| pl res |
	pl := GamePulseLoop new.
	res := pl createLoopProcess.
	self assert: res name equals: pl defaultProcessId 