loading
loadRawMapData
	|rawMap|
	rawMap := ( Array new: height ) .
		1 to: height
			do: [ :i | |line|
				line := fs nextLine .
				( line isNil or: [ line size ~= width ] )
					ifTrue: [ ^ nil ] .
				rawMap at: i put: line ] .
	^ rawMap .
