modifying
put: cell X: x Y: y 
		(matrix isNil) 
		ifTrue:  [ ^nil ]
		ifFalse: [
			((matrix rowCount >= y) & (matrix columnCount >= x) & (x > 0) & (y > 0)) 
				ifFalse: [ ^nil ] 
				ifTrue:[ ^matrix at: y at: x put: cell]
		].