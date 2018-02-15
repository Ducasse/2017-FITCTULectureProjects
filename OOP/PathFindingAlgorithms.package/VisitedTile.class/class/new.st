instance creation
new
	| tile |
	tile := EmptyTile new.
	tile visit.
	^tile