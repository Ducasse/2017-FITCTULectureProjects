private
explore: aQueue withMap: aMap
	| tmp |
	tmp := aQueue removeFirst.
	(aMap possibleVisitableTiles: tmp value)
		do: [ :move | 
			(((aMap tiles at: move value x) at: move value y) isFinish)
				ifTrue: [ ^ tmp key ].
			aQueue addLast: tmp key -> move value].
	^ #doNext