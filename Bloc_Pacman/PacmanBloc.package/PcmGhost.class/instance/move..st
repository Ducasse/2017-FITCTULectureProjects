accessing
move: aPcmGame
	self decideOnMap: aPcmGame map to: aPcmGame pacman.
	directionChangeRequest ifNotNil: [ self changeDirection: aPcmGame map ].
	(x \\ 32 = 0 and: y \\ 32 = 0)
		ifTrue: [ (self canGoThroughNextBlock: aPcmGame map direction: direction)
				ifFalse: [ direction := PcmDir null ] ].
	Transcript show: self className, ': ', x asString , ' - ', y asString;cr.
	direction moveInDirection: self.
	self computeCurrentCoordinate: aPcmGame map.
	self announcer announce: PcmBlockMoved new