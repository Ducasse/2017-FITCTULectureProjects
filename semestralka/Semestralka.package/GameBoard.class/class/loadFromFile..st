initialization
loadFromFile: mapFile
	"loads the gameboard according to the contents of mapFile in the maps directory"
	|stream width height unitCount board|
	stream := StandardFileStream fileNamed:
	'pharo-local\iceberg\OOP-semestralka\semestralka\maps\', mapFile.
	height := (stream upTo: Character space) asInteger.
	width := (stream upTo: Character space) asInteger.
	unitCount := (stream upTo: Character cr) asInteger.
	board := (self createWithWidth: width andHeight: height).
	stream next. "to get rid of Character lf"
	
	1 to: height do: [ :y |
		1 to: width do: [ :x |
			(board getSquare: x@y) setTerrain: (Terrain createWithChar: stream next).
		].
		stream next; next. "to get rid of Character cr and lf"
	].
	
	unitCount timesRepeat: [ 
		|x y race unitType hp xp|
		x := (stream upTo: Character space) asInteger.
		y := (stream upTo: Character space) asInteger.
		race := stream upTo: Character space.
		unitType := (stream upTo: Character space) asInteger.
		hp := (stream upTo: Character space) asInteger.
		xp := (stream upTo: Character cr) asInteger.
		(board getSquare: x@y) setObject: (Unit createAtPoint: x@y ofRace: race ofType: unitType
															withHp: hp withXp: xp).
		board getUnitList addLast: ((board getSquare: x@y) getObject).
		stream next. "to get rid of Character lf"
	].

	^ board.