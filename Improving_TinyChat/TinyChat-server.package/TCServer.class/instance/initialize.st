initialize-release
initialize
	super initialize.
	messagesQueue := TCMessageQueue new.
	users := Set new.