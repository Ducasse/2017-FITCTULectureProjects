tests
testGameObjects
	| g s g1 g2 g3 |
	g := Game new.
	s := Scene new.
	g addScene: s.
	self assert: s gameObjects isEmpty.
	g1 := s createGameObject.
	g2 := s createGameObject.
	g3 := s createGameObject.
	self assertCollection: s gameObjects hasSameElements: { g1 . g2 . g3 }
	