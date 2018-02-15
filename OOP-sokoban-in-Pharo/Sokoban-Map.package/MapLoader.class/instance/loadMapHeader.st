loading
loadMapHeader
	|firstLine|
	firstLine := fs nextLine .
	( firstLine = 'saved_game' or: [ firstLine = 'level' ] )
		ifTrue: [ ( firstLine = 'saved_game' )
			ifTrue: [ isSavedGame := true.
				moves := self loadParam: $m ]]
		ifFalse: [ ^ nil ] .
	height := self loadParam: $h .
	width := self loadParam: $w .

	^ nil .
