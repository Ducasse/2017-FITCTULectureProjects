tests
testFormatedMessage
	messagesQueue reset.
	messagesQueue add: (TCMessage from: 'olivier' text: 'hello').
	self assert: (messagesQueue formattedMessagesFrom: 1) equals: ('olivier>hello' , String crlf).