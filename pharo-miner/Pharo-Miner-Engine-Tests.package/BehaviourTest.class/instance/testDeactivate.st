tests
testDeactivate
	| br go |
	br := BehaviourTestChild new.
	go := GameObject new.
	go addBehaviour: br.
	br test: 0.
	go pulse.	
	self assert: br test equals: 1.
	br deactivate.
	go pulse.	
	self assert: br test equals: 1.