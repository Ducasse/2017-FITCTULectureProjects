accessing
imageRepresentationForContent: aCellContents
	aCellContents class = Box
		ifTrue: [ ^ ResourceManager instance getResource: 'crate_16' ].
	aCellContents class = Player
		ifTrue: [ | move |
			move := aCellContents levelPos level history lastAction.
			move class = NoMove
				ifTrue: [ ^ ResourceManager instance getResource: 'player_23' ].
			move dir class = Down
				ifTrue: [ ^ ResourceManager instance getResource: 'player_23' ].
			move dir class = Left
				ifTrue: [ ^ ResourceManager instance getResource: 'player_14' ].
			move dir class = Right
				ifTrue: [ ^ ResourceManager instance getResource: 'player_11' ].
			move dir class = Up
				ifTrue: [ ^ ResourceManager instance getResource: 'player_02' ] ].
	^ nil