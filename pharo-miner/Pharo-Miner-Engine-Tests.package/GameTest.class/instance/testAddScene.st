tests
testAddScene
	| g s1 s2 |
	g := Game new.
	s1 := Scene new.
	g addScene: s1.
	self assertCollection: g scenes hasSameElements: {s1}.
	s2 := Scene new.
	g addScene: s2.
	self assertCollection: g scenes hasSameElements: {s1 . s2}.