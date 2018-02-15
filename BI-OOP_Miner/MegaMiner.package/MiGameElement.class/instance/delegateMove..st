drawing
delegateMove: aDirection
	minerView isLocked
		ifFalse:[model performMove: aDirection]