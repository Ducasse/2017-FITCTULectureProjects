initialization
initialize
	map := MiMap random.
	miner := MiMiner new.
	"miner position 1@1 to more match pharo arrays, draw with 0@0 being left top corner"
	moveCodeOnHold := [ :direction | ].
	moveCode :=
		[ :direction |
			miner direction: direction.
			(map moveOn: self miner to: self miner nextPosition) response: self
		]