tests
moveDownTest
	| sizeX sizeY mapMatrix s |
	sizeX := 5.	"Pocet radku"
	sizeY := 3.	"Pocet sloupcu"
	mapMatrix := Array new: sizeX.
	1 to: sizeX do: [ :i | mapMatrix at: i put: (Array new: sizeY) ].
	(mapMatrix at: 1) at: 1 put: 'W'.
	(mapMatrix at: 1) at: 2 put: 'W'.
	(mapMatrix at: 1) at: 3 put: 'W'.
	(mapMatrix at: 2) at: 1 put: 'W'.
	(mapMatrix at: 2) at: 2 put: 'P'.
	(mapMatrix at: 2) at: 3 put: 'W'.
	(mapMatrix at: 3) at: 1 put: 'W'.
	(mapMatrix at: 3) at: 2 put: 'F'.
	(mapMatrix at: 3) at: 3 put: 'W'.
	(mapMatrix at: 4) at: 1 put: 'W'.
	(mapMatrix at: 4) at: 2 put: 'F'.
	(mapMatrix at: 4) at: 3 put: 'W'.
	(mapMatrix at: 5) at: 1 put: 'W'.
	(mapMatrix at: 5) at: 2 put: 'W'.
	(mapMatrix at: 5) at: 3 put: 'W'.
	s := SRound withMap: mapMatrix.
	s moveDown.
	s moveDown