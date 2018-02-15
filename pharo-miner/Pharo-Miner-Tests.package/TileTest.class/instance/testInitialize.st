tests
testInitialize
	| tile |
	tile := Tile new.
	self assert: (tile getBehaviour: SpriteRenderer) isNotNil.
	self assert: (tile getBehaviour: Transform) isNotNil.
	self assert: (tile getBehaviour: Collider) isNotNil