saving
saveScene: aScene
	aScene gameObjects do: [ :go | go visitedBy: self ]