calculating
nextMoveWithMap: aMap beginning: aPoint
	| queue tmpRet |
	queue := LinkedList new.
	tmpRet := self firstExplore: queue withMap: aMap start: aPoint.
	tmpRet = #doNext
		ifFalse: [ ^ tmpRet ].
	[ queue isEmpty ]
		whileFalse: [ tmpRet := self explore: queue withMap: aMap.
			tmpRet = #doNext
				ifFalse: [ ^ tmpRet ] ].
	aMap resetVisited.
	^ RandomMoveAlgorithm new nextMoveWithMap: aMap beginning: aPoint.