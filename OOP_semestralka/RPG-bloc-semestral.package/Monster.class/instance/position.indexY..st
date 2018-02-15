getSet
position: x indexY: y
   |field|
	"Sets he index position of monster, BUT ALSO sets the position of monster within game array"
	((self gameBoard) isOutOfRange: x Y: y)
	ifTrue: [ ^false ].
	
	(positionWithinArray isNil)
	ifFalse: [ 
			"erase the previous position"
	field := (self gameBoard) mapField: (positionWithinArray x) Y: (positionWithinArray y).
	field monsta: nil.
	 ].

	"set new position"
	field := (self gameBoard) mapField: x Y: y.
	field monsta: self.
	
	positionWithinArray := (Point x: x y: y).
	^true