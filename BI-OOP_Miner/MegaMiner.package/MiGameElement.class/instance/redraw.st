drawing
redraw
	| minerPosition relativeMinerDraw |
		
	minerPosition  := model miner position.
	relativeMinerDraw := boardView showBlocksRelativeTo: minerPosition.
	oldRelativeMinerDraw = relativeMinerDraw
		ifTrue:[boardView remakeBoardSmooth]
		ifFalse:[boardView remakeBoardInstant].
		"boardView remakeBoardInstant."
	minerView moveTo: relativeMinerDraw.
	statsView redraw.
	oldRelativeMinerDraw := relativeMinerDraw.