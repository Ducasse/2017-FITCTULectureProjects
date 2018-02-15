as yet unclassified
handleSmallDotConsumed
	points := points + 10.
	dots := dots - 1.
	dots = 0 ifTrue: [ self handlePlayerWon ].
	self announcer
		announce:
			(PcmPointsChanged new
				points: points;
				yourself)