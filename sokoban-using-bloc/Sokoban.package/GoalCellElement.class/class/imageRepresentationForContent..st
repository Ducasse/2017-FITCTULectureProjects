accessing
imageRepresentationForContent: aCellContents
	aCellContents class = Box
		ifTrue: [ ^ ResourceManager instance getResource: 'crate_06' ].
	^ super imageRepresentationForContent: aCellContents