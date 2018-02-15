accessing
interactable
	type == Enum me
		ifTrue: [ ^ true ].
	type == Enum teammate
		ifTrue: [ ^ true ].
	type == Enum enemy
		ifTrue: [ ^ true ].
	
	^ false
		