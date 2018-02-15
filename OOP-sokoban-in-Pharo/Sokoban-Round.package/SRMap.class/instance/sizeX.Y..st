accessing
sizeX: aSizeX Y: aSizeY
"set sizes"

	sizeX := aSizeX.
	sizeY := aSizeY.

	"create new array"
	map := Array new: sizeX.
	1 to: sizeX do: [ :i | map at: i put: (Array new: sizeY) ]