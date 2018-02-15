tests
testItemPosition
	| grid c x y |
	c := 2.
	grid := TileGrid withColumns: c.
	grid add: {Wall new}.
	grid
		add:
			{Grass new.
			Grass new.
			Wall new.
			Grass new.
			Water new}.
	x := 0.
	y := 0.
	grid childrenDo: [ :each | 
			self assert: each y equals: y.
			self assert: each x equals: x.
			x + 1 > c
				ifTrue: [ y := y + 1.
					x := 0 ]
				ifFalse: [ x := x + 1 ] ]