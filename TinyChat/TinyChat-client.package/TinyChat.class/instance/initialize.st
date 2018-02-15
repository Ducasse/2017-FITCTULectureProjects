initialize-release
initialize
	super initialize.
	exit := false.
	lastMessageIndex := 0.
	messages := OrderedCollection new.