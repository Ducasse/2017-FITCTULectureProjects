add/remove
deleteGameObject: aGameObject
	self gameObjects remove: (aGameObject scene: nil; yourself)