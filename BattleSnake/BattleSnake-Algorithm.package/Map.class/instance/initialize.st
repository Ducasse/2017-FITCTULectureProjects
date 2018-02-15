initialization
initialize
	"Prepare tiles as 2D array with specific size"
	tiles:=Array new: sizeX.
	1 to: sizeX do: [ :i | tiles at: i put: (Array new: sizeY)].