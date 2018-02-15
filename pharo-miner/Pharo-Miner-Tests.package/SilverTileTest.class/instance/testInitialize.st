tests
testInitialize
	| tile |
	tile := SilverTile new.
	self assert: (tile getBehaviour: SpriteRenderer) image equals: #spriteSilver