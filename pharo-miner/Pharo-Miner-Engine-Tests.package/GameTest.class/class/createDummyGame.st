utility
createDummyGame
	| g |
	g := Game new addScene: Scene new. 
	g currentScene addGameObject: GameObject new.
	^ g