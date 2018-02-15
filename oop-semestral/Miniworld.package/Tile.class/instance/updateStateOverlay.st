state update
updateStateOverlay
	state color isNotNil
		ifFalse: [ ^ self removeStateOverlay ].
	self childrenCount = 0
		ifTrue: [ self createStateOverlay ].
	(self children at: 1) background: state color