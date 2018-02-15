private
rippleClick: aPosition
	selected ifTrue: [ self deselect ]
	ifFalse: [ 
	self selectButton: aPosition]