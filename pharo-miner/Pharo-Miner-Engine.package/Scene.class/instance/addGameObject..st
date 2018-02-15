add/remove
addGameObject: aGameObject
	self gameObjects add: aGameObject.
	aGameObject scene: self.
	self game gameloop running ifTrue: [ aGameObject announcer announce: StartAnnouncement ].
	^ aGameObject