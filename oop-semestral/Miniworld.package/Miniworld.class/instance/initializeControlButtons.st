initialization
initializeControlButtons
	self space root 
		addChild:
			(((BlButtonFactory materialWithText: 'step')
				addOnClick: [ :e | 
					startTile ifNotNil: [
						algorithm isRunning ifFalse: [ self reset ].
						algorithm nextStep not & algorithm found ifTrue: [ 
							"algorithm has finished, display the found path" self displayFoundPath ]
					]
				 ]) relocate: 10 @ 10);
		addChild:
			(((BlButtonFactory materialWithText: 'run')
				addOnClick: [ :e | 
					startTile ifNotNil: [
						algorithm isRunning ifFalse: [ self reset ].
						[ algorithm nextStep ] whileTrue.
						algorithm found ifTrue: [ self displayFoundPath ]
					]
				]) relocate: 10 @ 60);
		addChild:
			(((BlButtonFactory materialWithText: 'reset')
				addOnClick: [ :e | self reset ]) relocate: 10 @ 110)