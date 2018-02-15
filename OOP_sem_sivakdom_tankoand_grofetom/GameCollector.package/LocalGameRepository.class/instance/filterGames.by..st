adding
filterGames: pGames by: filterBy
	|filterBlock|
	(filterBy == #ALL) ifTrue: [ 
		filterBlock := [ :g | true ]
		 ].
	(filterBy == #PC) ifTrue: [ 
		filterBlock := [ :g | g isMemberOf: PCGame ]
		 ].
	(filterBy == #PS3) ifTrue: [ 
		filterBlock := [ :g | g isMemberOf: PS3Game ]
		 ].
	(filterBy == #PS4) ifTrue: [ 
		filterBlock := [ :g | g isMemberOf: PS4Game ]
		 ].
	(filterBy == #WII) ifTrue: [ 
		filterBlock := [ :g | g isMemberOf: WiiGame ]
		 ].
	^(pGames select: filterBlock) asOrderedCollection.
	