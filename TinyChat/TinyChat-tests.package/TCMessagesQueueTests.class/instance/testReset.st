tests
testReset
	messagesQueue add: (TCMessage from: 'olivier' text: 'hello').
	messagesQueue reset.
	self assert: (messagesQueue size = 0).