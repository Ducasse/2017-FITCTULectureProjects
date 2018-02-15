event dispatching
deselect
	selectObject
		ifNotNil: [ self removeChild: selectObject.
			self onSelectFire: false.
			selected := false.
			^ true ].
	^ false