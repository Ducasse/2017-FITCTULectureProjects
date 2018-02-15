accessing
changeDirection: aPcmMap
	| change |
	directionChangeRequest ifNil: [ ^ self ].
	change := directionChangeRequest.
	directionChangeRequest := nil.
	direction
		ifNotNil: [ direction == change
				ifTrue: [ ^ self ].
			direction = change opposite
				ifTrue: [ direction := change.
					self announcer announce: PcmBlockChangedDirection new.
					^ self ] ].
	(x \\ 32 = 0 and: y \\ 32 = 0)
		ifTrue: [ (self canGoThroughNextBlock: aPcmMap direction: change)
				ifTrue: [ direction := change.
					self announcer announce: PcmBlockChangedDirection new.
					^ self ] ].
	directionChangeRequest ifNil: [ directionChangeRequest := change ]