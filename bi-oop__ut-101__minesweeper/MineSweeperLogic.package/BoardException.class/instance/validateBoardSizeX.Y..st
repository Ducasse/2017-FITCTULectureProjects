validation
validateBoardSizeX: xVal Y: yVal
	| xMax yMax |
	xMax := 16.
	yMax := 16.
	
	(xVal <= 0) ifTrue: [ ^self signal: 'Widht X (', xVal asString, ') is too small!' ].
	(xVal > xMax) ifTrue: [ ^self signal: 'Widht X (', xVal asString, ') is too big!' ].
	(yVal <= 0) ifTrue: [ ^self signal: 'Height Y (', yVal asString, ') is too small!' ].
	(yVal > yMax) ifTrue: [ ^self signal: 'Height Y (', yVal asString, ') is too big!' ].