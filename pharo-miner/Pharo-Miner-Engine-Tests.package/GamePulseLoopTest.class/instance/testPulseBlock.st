tests
testPulseBlock
	| pl b |
	pl := GamePulseLoop new.
	b := [ 'test' ].
	pl pulseBlock: b.
	self assert: pl pulseBlock equals: b.