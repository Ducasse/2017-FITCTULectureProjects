initialization
initialize
	fields := OrderedCollection new.
	x := 5.
	y := 3.
	
	1 to: x do: [ :ix |
		|row|
		row := OrderedCollection new.
		1 to: y do: [ :iy |
			|fs|
			fs := FieldStruct new x: ix; y: iy.
			iy == 2
				ifTrue: [ fs type: Enum road ]
				ifFalse: [ fs type: Enum wall ].
			row add: fs.
		].
		fields add: row.
	]