subscription
subscribe
	super subscribe.
	self renderer announcer when: ImageChangeAnnouncement do: [ self refreshImage ]