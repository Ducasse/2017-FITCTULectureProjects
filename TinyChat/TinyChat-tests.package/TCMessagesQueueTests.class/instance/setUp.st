initialize-release
setUp
	messagesQueue := TCMessageQueue new.
	messagesQueue add: (TCMessage from: 'user1' text: 'hello').
	messagesQueue add: (TCMessage from: 'user2' text: 'hi!').
	messagesQueue add: (TCMessage from: 'user1' text: 'How are you?').