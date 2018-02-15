removing
deleteGame: id
	|game|
	game := self getGame: id.
	games remove: game ifAbsent: [  ].
	^self.