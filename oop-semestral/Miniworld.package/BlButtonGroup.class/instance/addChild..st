children add/remove
addChild: anItem
	anItem selected
		ifTrue: [ selected ifNil: [ selected := anItem ] ifNotNil: [ anItem deselect ] ]. anItem
		onSelectDo: [ :item :sel | self select: item isSelected: sel ].
	super addChild: anItem