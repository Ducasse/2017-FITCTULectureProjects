tests-accessing
testState
	| tile |
	tile := Grass new.
	tile forceLayout.
	self assert: tile state equals: TileState undiscovered.
	tile state: TileState discovered.
	self assert: tile state equals: TileState discovered.
	self
		assert: tile state ~= TileState undiscovered
		description: 'Discovered tile state cannot be equal to undiscovered tile state'.
	tile changed.
	self
		assert: (tile children at: 1) background paint color
		equals: TileState discovered color