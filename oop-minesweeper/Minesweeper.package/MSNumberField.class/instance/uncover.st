actions
uncover
	super uncover.
	"If the field is zero field uncover all covered unmarked neighbours"
	(number = 0)
		ifTrue: [ 
			neighbours do: [ :neighbour |
				(neighbour covered) 
					ifTrue: [
						neighbour leftClick
					]
			]
		].