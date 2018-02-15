private
firstExplore: aQueue withMap: aMap start: aIndex
	(aMap possibleVisitableTiles: aIndex)
		do: [ :move | 
			(((aMap tiles at: move value x) at: move value y) isFinish)
				ifTrue: [ ^ move key ].
			aQueue addLast: move ].
	^ #doNext