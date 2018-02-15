tests
testSendMessageWith
	| br |
	br := BehaviourTestChild new.
	br sendMessage: #test: with: 85.
	
	self assert: br test equals: 85.
	
	