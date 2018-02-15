tests
testRelayMessage
	| go br |
	go := GameObject new.
	br := BehaviourTestChild new test: 10.
	go addBehaviour: br.
	go relayMessage: #update.
	self assert: br test equals: 11