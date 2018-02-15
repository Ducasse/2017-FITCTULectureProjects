tests
testGetCollisionEvents
	| game go col |
	col := Collider rectangular
		width: 5;
		height: 5;
		yourself.
	go := GameObject new
		addBehaviour: (Transform new position: 0 @ 0);
		addBehaviour: col;
		yourself.
	game := Game new
		addScene: Scene new;
		yourself.
	game currentScene
		addGameObject: go;
		addGameObject:
			(GameObject new
				addBehaviour: (Transform new position: 2 @ 0);
				addBehaviour:
					(Collider rectangular
						width: 5;
						height: 5;
						yourself);
				yourself);
		addGameObject:
			(GameObject new
				addBehaviour: (Transform new position: 100 @ 100);
				addBehaviour:
					(Collider rectangular
						width: 5;
						height: 5;
						yourself);
				yourself);
		addGameObject:
			(GameObject new
				addBehaviour: (Transform new position: 1 @ 1);
				addBehaviour:
					(Collider rectangular
						width: 5;
						height: 5;
						yourself);
				yourself).
	self assert: col getCollisionEvents size equals: 2