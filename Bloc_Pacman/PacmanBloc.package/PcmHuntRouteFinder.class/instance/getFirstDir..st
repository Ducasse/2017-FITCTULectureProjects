accessing
getFirstDir: aDict
	| curr |
	curr := endNode deepCopy.
	[ true ]
		whileTrue: [ (aDict at: curr) = startNode
				ifTrue: [ ^ (map getDirFrom: startNode to: curr) opposite ]
				ifFalse: [ curr := aDict at: curr ] ]