initialization
initialize
	super initialize.
	currentCenter := relativeCenter:= cornerPosition := MiMinerStartPosition.
	viewCollection := OrderedCollection new.
	self layout: (BlGridLayout horizontal cellSpacing: 0).
	self constraintsDo:
		[ :layoutConstraints |
			layoutConstraints horizontal fitContent.
			layoutConstraints vertical fitContent
		].
	fakeBlockHolder := MiBlockHolder with: MiFakeBlock new.
	translationAnimation := BlNumberTransition new.