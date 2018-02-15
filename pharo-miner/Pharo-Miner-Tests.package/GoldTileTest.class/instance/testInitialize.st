tests
testInitialize
	| tile |
	tile := GoldTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteGold