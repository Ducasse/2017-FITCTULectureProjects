validation
validateCoordinateBoardX: xMax BoardY: yMax X: xVal Y: yVal
	((xVal <= 0) | (xVal > xMax) | (yVal <= 0) | (yVal > yMax)) 
	ifTrue: [ ^self signal: 'Coordinate [', xVal , ':', yVal, 'is out of range!' ].
	