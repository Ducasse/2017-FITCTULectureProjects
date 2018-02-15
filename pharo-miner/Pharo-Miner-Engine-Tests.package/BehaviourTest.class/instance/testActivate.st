tests
testActivate
	| br go |
	br := BehaviourTestChild new.
	br deactivate.
	go := GameObject new.
	go addBehaviour: br.
	br test: 0.
	go pulse.	
	self assert: br test equals: 0.
	br activate.
	go pulse.	
	self assert: br test equals: 1.