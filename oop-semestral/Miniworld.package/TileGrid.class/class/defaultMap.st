instance creation
defaultMap
	| tg |
	tg := TileGrid withColumns: 6.
	tg
		add:
			{Wall new.
			Wall new.
			Wall new.
			Wall new.
			Wall new.
			Wall new}.
	tg
		add:
			{Grass new.
			Sand new.
			Sand new.
			Sand new.
			Sand new.
			Grass new}.
	tg
		add:
			{Grass new.
			Sand new.
			ShallowWater new.
			Water new.
			Sand new.
			Sand new}.
	tg
		add:
			{Grass new.
			Sand new.
			ShallowWater new.
			ShallowWater new.
			ShallowWater new.
			Sand new}.
	tg
		add:
			{Grass new.
			Sand new.
			Water new.
			Water new.
			Sand new.
			Sand new}.
	tg
		add:
			{Wall new.
			Pavement new.
			Water new.
			Wall new.
			Pavement new.
			Wall new}.
	^ tg