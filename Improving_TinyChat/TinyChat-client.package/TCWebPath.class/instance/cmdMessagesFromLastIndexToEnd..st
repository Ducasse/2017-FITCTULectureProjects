command
cmdMessagesFromLastIndexToEnd: lastMessageIndex
	"Returns the server messages from my current last index to the last one on the server."
	^ self command: '/messages' argument: lastMessageIndex