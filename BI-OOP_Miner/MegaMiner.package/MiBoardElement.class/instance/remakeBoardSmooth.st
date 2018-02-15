initialization
remakeBoardSmooth
	self relocate:(-80)@(-80) + (absoluteMinerDifference *(80)@(80)).
	self remakeBoard.
	translationAnimation isRunning
		ifTrue: [ translationAnimation stop ].
		
	translationAnimation := BlNumberTransition new
		duration: (MiMinerMoveTime seconds);
		from: (-80)@(-80) + (absoluteMinerDifference *(80)@(80));
		to: (MiBlockSize negated);
		onStepDo: [ :aPosition | self relocate: aPosition rounded];
		startOn: self