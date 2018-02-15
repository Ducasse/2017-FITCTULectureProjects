tests-pathfinding
testPassable
	self assert: Tile new passable equals: nil.
	self assert: GroundTile new passable equals: true.
	self assert: ObstacleTile new passable equals: false.