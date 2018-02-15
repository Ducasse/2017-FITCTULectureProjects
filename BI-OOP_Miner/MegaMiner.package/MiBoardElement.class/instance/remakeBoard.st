initialization
remakeBoard
	| counter endPosition startPosition|
	counter := 1.
	startPosition := cornerPosition + ( (-1) @ (-1) ).
	endPosition := cornerPosition + ((MiBlockRowCount ) @ (MiBlockColumnCount)).
	
	startPosition y to: endPosition y do:[ :y |
		 	startPosition x to: endPosition x do:[ :x |
		 		(x = 0) | (y = 0) | ( x > MiMapSize x) | (y > MiMapSize y)
					ifTrue:[(viewCollection at: counter) model: fakeBlockHolder ]
					ifFalse:[(viewCollection at: counter) model: (model at: x@y)].
				counter := counter + 1 
		
			 ]
		
		
		 ]
	
	
	"model
		from: cornerPosition
		to: cornerPosition + ((MiBlockRowCount -1) @ (MiBlockColumnCount-1))
		do: [ :aBlock | 
			(viewCollection at: counter) model: aBlock.
			counter := counter + 1 ]"