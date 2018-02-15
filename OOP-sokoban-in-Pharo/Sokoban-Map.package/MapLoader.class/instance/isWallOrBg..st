validation
isWallOrBg: aChar
	^ ( aChar = $B or: [ aChar = $W ] ) .
