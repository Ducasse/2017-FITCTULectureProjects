tests
testSendMessage
	| br |
	br := BehaviourTestChild new.
	br test: 85.
	
	self assert: (br sendMessage: #test) equals: 85.
	