instance creation
newMap2
	| tg |
	tg := TileGrid withColumns: 6.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	tg
		add:
			{Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new.
			Grass new}.
	^ self new: tg