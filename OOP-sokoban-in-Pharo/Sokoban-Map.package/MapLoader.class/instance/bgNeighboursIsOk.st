validation
bgNeighboursIsOk
	2 to: ( height - 1 )
		do: [ :i | 2 to: ( width - 1 )
			do: [ :j |
				( self ifBgWithValidNeighbours: i and: j )
					ifFalse: [ ^ false . ] . ]] .
	^ true .
