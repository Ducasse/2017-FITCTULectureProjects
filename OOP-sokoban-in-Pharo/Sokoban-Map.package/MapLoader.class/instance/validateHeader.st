validation
validateHeader
	(( height isNil
		| width isNil
		| ( isSavedGame & moves isNil))
		or: [ height < 3 or: [ 15 < height or: [ width < 3 or: [ 20 < width ]]]] )
			ifTrue: [ ^ false ] .
	^ true .
