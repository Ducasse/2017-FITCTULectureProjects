tests
testActive
	| br go |
	br := self createSubject.
	self assert: br active equals: true.
	br deactivate.
	self assert: br active equals: false.
	br activate.	
	self assert: br active equals: true.
	go := GameObject new.
	go addBehaviour: br.
	self assert: br active equals: true.
	br deactivate.
	self assert: br active equals: false.
	br activate.	
	self assert: br active equals: true.