initialization
initialize
	super initialize.
	self
		layout: (BlGridLayout vertical cellSpacing: 0);
		size: self size;
		constraintsDo:
		[ :layoutConstraints |
			layoutConstraints horizontal fitContent.
			layoutConstraints vertical fitContent
		];
		relocate: (MiGameSize x / 3)@(MiGameSize y / 3).
	self layout columnCount: 1