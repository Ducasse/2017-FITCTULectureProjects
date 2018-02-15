accessing
map: aMap
	"set map"

	| sizeX sizeY pos elem |
	"read sizes"
	sizeX := aMap size.
	sizeY := (aMap at: 1) size.

	"set size"
	size := sizeX * sizeY.

	"create new array"
	map := Array new: size.

	"create 1D array from 2D array"
	1 to: sizeX do: [ :posX | 
		1 to: sizeY do: [ :posY | 
			pos := (posX - 1) * sizeY + posY.
			elem := (aMap at: posX) at: posY.
			map at: pos put: elem ] ]