graphics
drawOnSpartaCanvas: aCanvas
|squares pos|
	"Draw all selected monster movement positions"
	
(currentlyPlayingMonster isNil)
ifTrue: [ ^self ].

"position of monster"
pos := (currentlyPlayingMonster positionWithinArray).
squares := ((self gameBoard) bfsDepth: pos depth: (currentlyPlayingMonster movementCurrent)).

"draw them"
squares do: [ :x |
	((self gameBoard) isOutOfRange: x)
		ifFalse: [ 		
		((self gameBoard) mapField: x) drawOnSpartaCanvasHighlight: aCanvas. 
		].
	 ].

"highlight currently playing monster"
((self gameBoard) mapField: pos) drawOnSpartaCanvasHighlightMonster: aCanvas. 
		