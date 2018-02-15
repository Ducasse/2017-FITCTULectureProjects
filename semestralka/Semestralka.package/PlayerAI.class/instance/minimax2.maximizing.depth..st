AImethods
minimax2: aGameBoard maximizing: aBool depth: aDepth
	| bestValue newValue attackableSquares moveableSquares |
	"terminal condition for recursion"
	(aDepth < 1 or: aGameBoard isGameOver)
		ifTrue: [ ^ aGameBoard AIValue ]
		ifFalse: [ attackableSquares := aGameBoard
				computeAttackableSquareEvenAfterMoving: aGameBoard getUnitList onTurn.
			moveableSquares := aGameBoard
				computeReachableSquareForMove: aGameBoard getUnitList onTurn.
			"Maximizing"
			aBool
				ifTrue: [ "minimazing"
					bestValue := -1000000.
					attackableSquares isEmpty
						ifTrue: [ moveableSquares
								do: [ :move | 
									newValue := self
										minimax2: (aGameBoard AImoveCurrentUnitToSquare: move)
										maximizing: false
										depth: aDepth - 1 ] ]
						ifFalse: [ attackableSquares
								do: [ :move | 
									newValue := self
										minimax2: (aGameBoard AIattackWithCurrentUnitOnSquare: move)
										maximizing: false
										depth: aDepth - 1 ] ].
					bestValue < newValue
						ifTrue: [ bestValue := newValue ].
					^ bestValue ]
				ifFalse: [ bestValue := 1000000.
					attackableSquares isEmpty
						ifTrue: [ moveableSquares
								do: [ :move | 
									newValue := self
										minimax2: (aGameBoard AImoveCurrentUnitToSquare: move)
										maximizing: false
										depth: aDepth - 1 ] ]
						ifFalse: [ attackableSquares
								do: [ :move | 
									newValue := self
										minimax2: (aGameBoard AIattackWithCurrentUnitOnSquare: move)
										maximizing: true
										depth: aDepth - 1 ] ].
					bestValue > newValue
						ifTrue: [ bestValue := newValue ].
					^ bestValue ] ]