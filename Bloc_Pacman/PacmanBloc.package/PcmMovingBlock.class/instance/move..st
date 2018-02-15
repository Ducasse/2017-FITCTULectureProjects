accessing
move: aPcmGame
	directionChangeRequest ifNotNil: [ self changeDirection: aPcmGame map ].
	velocityChangeRequest
		ifNotNil: [ velocity := velocityChangeRequest.
			velocityChangeRequest := nil ].
	(x \\ 32 = 0 and: y \\ 32 = 0)
		ifTrue: [ (self canGoThroughNextBlock: aPcmGame map direction: direction)
				ifFalse: [ direction := PcmDir null ] ].
	direction moveInDirection: self.
	self computeCurrentCoordinate: aPcmGame map.
	self announcer announce: PcmBlockMoved new