tests
testAddMessage
	messagesQueue add: (TCMessage from: 'user1' text: 'fine ;-)').
	self assert: (messagesQueue size = 4).