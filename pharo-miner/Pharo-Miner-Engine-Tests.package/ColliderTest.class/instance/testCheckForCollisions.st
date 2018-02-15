tests
testCheckForCollisions
	| game go col test |
	test := 0.
	col := Collider rectangular
		width: 5;
		height: 5;
		yourself.
	go := GameObject new
		addBehaviour: (Transform new position: 0 @ 0);
		addBehaviour: col;
		yourself.
	go announcer when: CollisionEvent do: [ test := test + 1 ].
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
	col checkForCollisions.
	self assert: test equals: 2