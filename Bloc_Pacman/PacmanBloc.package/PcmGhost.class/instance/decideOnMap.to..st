as yet unclassified
decideOnMap: aMap to: aPacman
	| random |
	(x \\ 32 = 0 and: y \\ 32 = 0)
		ifFalse: [ ^ self ].
	random := intelligence atRandom.
	random = 1
		ifTrue: [ finder startNode: self coordinate.
			finder endNode: aPacman coordinate.
			finder map: aMap.
			self directionChangeRequest: (finder runFor: self) ]
		ifFalse: [ random := 4 atRandom.
			random = 1
				ifTrue: [ directionChangeRequest := PcmDir right ].
			random = 2
				ifTrue: [ directionChangeRequest := PcmDir down ].
			random = 3
				ifTrue: [ directionChangeRequest := PcmDir left ].
			random = 4
				ifTrue: [ directionChangeRequest := PcmDir up ] ]