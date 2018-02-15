private
refreshMessages
	|tmp|
	tmp := messages copy.
	[  
		[ exit ] whileFalse: [  
			(Delay forSeconds: 0.5) wait.
			lastMessageIndex := lastMessageIndex + (self readMissingMessages).
			tmp size = messages size ifFalse: [
				console print: messages.
				tmp := messages copy.
			].
		]
	] fork
