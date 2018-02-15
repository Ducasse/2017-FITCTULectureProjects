accessing
getNeighborsRow: r column: c
	| res t rows |
	res := OrderedCollection new.
	rows := self children size / self columns.
	" check if it's out of bounds "
	-1 to: 1 do: [ :i | 
		-1 to: 1 do: [ :j | 
			i * i + (j * j) = 1 & (r + i >= 0) & (r + i < rows) & (c + j >= 0)
				& (c + j < self columns)
				ifTrue: [ t := self x: c y: r.
					t passable
						ifTrue: [ res add: (self x: (c + j) y: (r + i)) ] ] ] ].
	^ res