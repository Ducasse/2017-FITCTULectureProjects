action
disconnect
	self sendNewMessage: (TCMessage from: login text: 'I exited from the chat room.').
	exit := true 