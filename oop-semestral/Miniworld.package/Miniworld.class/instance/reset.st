algorithms
reset
	self clearStates.
	self setStartTile: startTile.
	(endTile notNil and: startTile notNil) ifTrue:	[
		algorithm init.
		endTile ifNotNil: [ 
			algorithm isSetEnd: true.
			self setEndTile: endTile.
		]
	].
