initialization
startAnnounce
	self globalAnnouncer announce: StartAnnouncement.
	self currentScene gameObjects do: [ :go | go announcer announce: StartAnnouncement ]