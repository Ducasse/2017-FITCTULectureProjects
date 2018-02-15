instance creation
forCell: aGameCell
	| elem |
	elem := (Smalltalk globals at: (aGameCell className , 'Element') asSymbol) new.
	elem cell: aGameCell.
	^ elem