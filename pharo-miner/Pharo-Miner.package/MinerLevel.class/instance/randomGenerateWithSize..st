initialization
randomGenerateWithSize: aNumber
| map | 
map := MineableTile allSubclasses union: SolidTile allSubclasses.

	self addGameObjectToGrid: (MiningMachine new) at: 0@ (aNumber+1).
	
	aNumber negated to: aNumber do: [ :i |
		aNumber negated to: aNumber do: [ :j | self addGameObjectToGrid: (map at: (1 to: map size) atRandom) new at: i@j ]
		  ].
	^ self