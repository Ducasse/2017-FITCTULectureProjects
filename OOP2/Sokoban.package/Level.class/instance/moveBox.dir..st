modifying
moveBox: box dir: dir
	| nextCell newX newY |
	newX := box x + dir x.
	newY := box y + dir y.
	nextCell := self atX: newX Y: newY.
	nextCell isNil
		ifTrue: [ ^ false ].
	nextCell isVisitable
		ifTrue: [
			(nextCell isTarget ) ifTrue: [	box onTarget: true ].
	      (nextCell isTarget ) ifFalse: [ box onTarget: false ].

			box x: newX.
			box y: newY.
			^ true ]
		ifFalse: [ ^ false ]