instance creation
forCell: aGameCell withSize: aPoint
	| elem |
	elem := self forCell: aGameCell.
	elem displaySize: aPoint.
	^ elem