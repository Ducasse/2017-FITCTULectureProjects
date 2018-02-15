tests
testGame
	| g s |
	g := Game new.
	s := Scene new.
	self assert: s game isNil.
	s game: g. "use '''g addScene: s''' "
	self assert: s game equals: g.