tests
testRelayMessageWith
	| go br1 br2 |
	go := GameObject new.
	br1 := BehaviourTestChild new test: 10.
	br2 := Behaviour new.
	go addBehaviour: br1.
	go addBehaviour: br2.
	go relayMessage: #test: with: 15.
	self assert: br1 test equals: 15