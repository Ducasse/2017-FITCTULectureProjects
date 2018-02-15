tests-accessing
testColor
	self assert: TileState undiscovered color isNil.
	self assert: TileState discovered color isNotNil.
	self assert: TileState processed color isNotNil.
	self assert: TileState path color isNotNil.
	self assert: TileState start color isNotNil.
	self assert: TileState end color isNotNil.