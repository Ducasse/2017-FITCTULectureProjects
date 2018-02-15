validation
ifBgWithValidNeighbours: i and: j
	^ ( (( map at: i ) at: j ) ~= $B
		| (( self isWallOrBg: (( map at: ( i - 1 ) ) at: j ) )
			& ( self isWallOrBg: (( map at: ( i + 1 ) ) at: j ) )
			& ( self isWallOrBg: (( map at: i ) at: ( j - 1 ) ) ) 
			& ( self isWallOrBg: (( map at: i ) at: ( j + 1 ) ) ) ) ) .
