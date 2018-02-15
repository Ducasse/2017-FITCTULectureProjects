adding
add: anItemList
	| index x y |
	index := self children size.
	x := index \\ columns.
	y := index // columns.
	anItemList
		doWithIndex: [ :each :i | 
			each x: x y: y.
			x = columns
				ifTrue: [ x := 0.
					y := y + 1 ]
				ifFalse: [ x := x + 1 ].
			self addChild: each ]