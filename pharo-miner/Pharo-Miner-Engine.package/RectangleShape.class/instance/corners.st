rectangle functions
corners
	^ ((self width / 2) @ (self height / 2)) fourReflexions
		collect: [ :corner | self offset + corner ]