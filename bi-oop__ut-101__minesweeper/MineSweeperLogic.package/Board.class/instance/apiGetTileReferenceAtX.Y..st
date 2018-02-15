api
apiGetTileReferenceAtX: xVal Y: yVal
	"Return a reference of the Tile object at the specefic coordinate."
	
	"Validate coordinate"
	BoardException new validateCoordinateBoardX: (self x) BoardY: (self y) X: xVal Y: yVal.
	
	^ self getTileAtX: xVal Y: yVal.