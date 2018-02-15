actions
deselectChild
	selected ifNotNil: [ ^ selected deselect ].
	^ true