tests
testInitialize
	| tile |
	tile := DirtTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteDirt