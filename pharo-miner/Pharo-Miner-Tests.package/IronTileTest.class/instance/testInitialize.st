tests
testInitialize
	| tile |
	tile := IronTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteIron