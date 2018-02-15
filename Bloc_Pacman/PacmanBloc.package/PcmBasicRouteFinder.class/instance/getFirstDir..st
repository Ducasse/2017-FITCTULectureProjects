running
getFirstDir: aDict
	| curr |
	curr := endNode deepCopy.
	[ true ]
		whileTrue: [ (aDict at: curr) = startNode
				ifTrue: [ 
					^ map getDirFrom: startNode to: curr ]
				ifFalse: [ curr := aDict at: curr ] ]