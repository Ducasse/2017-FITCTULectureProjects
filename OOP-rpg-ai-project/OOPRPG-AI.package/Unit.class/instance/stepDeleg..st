accessing
stepDeleg: anObject
	|title|
	title := anObject getTraitTitle.
	title ifNotNil: [ nickname := (nickname , ' ' , title) ].
	stepDeleg := anObject