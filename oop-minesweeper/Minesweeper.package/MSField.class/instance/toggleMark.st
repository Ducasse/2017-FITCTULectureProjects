actions
toggleMark
	"Method to handle right click (toggle marking)"
	marked
		ifTrue: [ self unmark ]
		ifFalse: [ self mark ].
	
	neighbours do: [ :field | field announcer announce: MSNeighbourMarkedAnnoucement new ].
	self announcer announce: MSFieldMarkedAnnoucement new