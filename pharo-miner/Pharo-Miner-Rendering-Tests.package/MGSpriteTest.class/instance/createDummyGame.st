as yet unclassified
createDummyGame
	| game scene go |
	game := Game new.
	scene := Scene new.
	game addScene: scene.
	go := GameObject new.
	scene addGameObject: go.
	^ game