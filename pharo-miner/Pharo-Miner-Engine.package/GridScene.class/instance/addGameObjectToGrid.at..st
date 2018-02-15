adding
addGameObjectToGrid: aGameObject at: aPoint
	self addGameObject: aGameObject.
	aGameObject transform position: aPoint floor * self cellSize