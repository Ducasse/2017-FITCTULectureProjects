tests
testInitialize
	| tile |
	tile := CoalTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteCoal