tests
testFirePulse
	| pl |
	pl := GamePulseLoop new pulseBlock: [ ^ 'test' ].
	self assert: pl firePulse equals: 'test'