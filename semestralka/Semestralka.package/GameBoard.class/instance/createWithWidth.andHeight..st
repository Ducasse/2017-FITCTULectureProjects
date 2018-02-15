initialization
createWithWidth: anIntegerX andHeight: anIntegerY

"creates a rectangle like board of given width and height and fills it with squares. Indexing of positions starts with 1, not 0! So the first square has position of (1@1)"

board = nil ifTrue: [ board := Dictionary new ]
				ifFalse: [ board removeAll: board. board := Set new ].
				
width := anIntegerX. 
height := anIntegerY.		
				
height to: 1 by: -1 do: [ :i |
width to: 1 by: -1 do: [ :k |
	board add: ((k@i) -> (Square new:(k@i))). 
	]
].
unitList := UnitCircleList new.
^ self.
