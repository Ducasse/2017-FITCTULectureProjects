typing/selecting keys
findName: aName
	^ data select: [ :each | (each name findString: aName) > 0 ].
	