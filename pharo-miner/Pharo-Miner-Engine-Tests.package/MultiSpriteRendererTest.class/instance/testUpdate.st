tests
testUpdate
	| r |
	r := MultiSpriteRenderer new.
	r rules: { [false]->#test . [true]->#test2 }.
	r update.
	self assert: r image equals: #test2
	