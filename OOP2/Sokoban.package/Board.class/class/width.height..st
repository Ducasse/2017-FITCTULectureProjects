as yet unclassified
width: x height: y 
	| board newMatrix|
	board := Board new.
	newMatrix  := Matrix rows: y columns: x. 
	board matrix: newMatrix.
	^board.