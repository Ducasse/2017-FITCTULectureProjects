tests
testPulse
	| go br |
	go := GameObject new.
	br := BehaviourTestChild new test: 10.
	go addBehaviour: br.
	go pulse.
	self assert: br test equals: 11