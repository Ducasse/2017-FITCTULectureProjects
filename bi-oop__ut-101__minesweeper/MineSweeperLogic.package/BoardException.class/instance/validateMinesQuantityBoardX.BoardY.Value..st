validation
validateMinesQuantityBoardX: xVal BoardY: yVal Value: minesVal
	((yVal * xVal) - 1 < minesVal)
	ifTrue: [ ^self signal: 'Too many mines! You are not a superhero!' ].
	(0 > minesVal) 
	ifTrue: [ ^self signal: 'Mines quantity should be > 0!' ].