running
runFor: aPcmMovingBlock
	| closeSet openSet dict parent_state |
	startNode = endNode
		ifTrue: [ ^ nil ].
	closeSet := Set new.
	openSet := OrderedCollection new.
	dict := Dictionary new.
	dict at: self startNode put: nil.
	openSet add: self startNode.
	[ openSet notEmpty ]
		whileTrue: [ parent_state := openSet at: 1.
			openSet remove: parent_state.
			endNode = parent_state
				ifTrue: [ ^ self getFirstDir: dict ].
			(map getFreeBlockAround: parent_state for: aPcmMovingBlock)
				do: [ :child | 
					(closeSet includes: child)
						ifFalse: [ (openSet includes: child)
								ifFalse: [ dict at: child put: parent_state.
									openSet add: child ] ] ].
			closeSet add: parent_state ]