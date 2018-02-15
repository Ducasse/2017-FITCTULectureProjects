validation
mapBoundaryIsOk
	(( map at: 1 ) allSatisfy: [ :each | self isWallOrBg: each ] )
		ifFalse: [ ^ false . ] .
	(( map at: height ) allSatisfy: [ :each | self isWallOrBg: each ] )
		ifFalse: [ ^ false . ] .
	( map allSatisfy: [ :each | |first last|
		first := ( each at: 1 ) .
		last := ( each at: width ) .
		(( self isWallOrBg: first ) & ( self isWallOrBg: last )) . ] )
			ifFalse: [ ^ false . ] .
	^ true .
