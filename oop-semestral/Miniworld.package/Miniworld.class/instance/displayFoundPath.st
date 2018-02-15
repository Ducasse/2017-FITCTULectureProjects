algorithms
displayFoundPath
	| curTile |
	self clearStates.
"	curTile := algorithm targetColumn , algorithm targetRow."
	curTile := algorithm pathMatrix at: (algorithm targetRow + 1) at: (algorithm targetColumn + 1).
	[
		(grid x: curTile x y: curTile y) state: TileState path.
		
		curTile := algorithm pathMatrix at: (curTile y + 1) at: (curTile x + 1).
		curTile y = algorithm startRow & (curTile x = algorithm startColumn)
	] whileFalse.