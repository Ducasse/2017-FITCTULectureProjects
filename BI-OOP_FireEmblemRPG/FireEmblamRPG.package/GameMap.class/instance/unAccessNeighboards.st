actions
unAccessNeighboards

	cards asArray do: [ :aCard | |field|
		field := aCard field.
		field accessable
			ifTrue: [ field access: false ].
		aCard field: field
		].