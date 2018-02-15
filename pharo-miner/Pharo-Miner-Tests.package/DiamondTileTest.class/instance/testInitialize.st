tests
testInitialize
	| tile |
	tile := DiamondTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteDiamond