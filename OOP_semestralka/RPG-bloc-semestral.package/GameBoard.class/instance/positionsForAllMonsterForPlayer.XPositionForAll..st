initialization
positionsForAllMonsterForPlayer: aPlayer XPositionForAll: x
	|monsters y|
	
	"set the positions for monsters"
	monsters := (aPlayer allLivingMonsters).
	
	"now we want alligment in such a way that there will be space between each monster, and they will be alligned at centre of the Y (vertical) line of the field  /
	ahora, queremos los posiciones, que son así: un espacio entre dos monstruos y todos monstruos estarán en el centro de la juego de mesa"
	
	"calculate where on Y axis will be first top monster"
	y := ((((self fieldsY) / 2) - ((monsters size) / 2)) asInteger).
		
	monsters do: [ :m | 
		"Transcript show: ('setting position ' , x asString, ' ', y asString); cr."
		m position: x indexY: y.
		y := y + 2.
		
		 ].