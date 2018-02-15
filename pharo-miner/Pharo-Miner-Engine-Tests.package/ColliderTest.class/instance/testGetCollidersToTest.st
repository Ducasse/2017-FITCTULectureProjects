tests
testGetCollidersToTest
	| game go col col1 col2 col3 |
	col := Collider rectangular
		width: 5;
		height: 5;
		yourself.
	col1 := Collider new.
	col2 := Collider new.
	col3 := Collider new.
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
				addBehaviour: (Transform new position: 0 @ 0);
				addBehaviour: col1;
				yourself);
		addGameObject:
			(GameObject new
				addBehaviour: (Transform new position: 100 @ 100);
				addBehaviour: col2;
				yourself);
		addGameObject:
			(GameObject new
				addBehaviour: (Transform new position: 1 @ 1);
				addBehaviour: col3;
				yourself).
	self
		assertCollection: col getCollidersToTest
		hasSameElements:
			{col1.
			col3}