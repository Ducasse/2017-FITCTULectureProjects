action
addMessage: aRequest
	messagesQueue add: (TCMessage from: (aRequest at: #sender) text: (aRequest at: #text)).
