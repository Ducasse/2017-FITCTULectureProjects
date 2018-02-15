accessing
getCurrentBackground
	self model isBeingHunting
		ifTrue: [ ^ '4' ]
		ifFalse: [ ^ '2' ]