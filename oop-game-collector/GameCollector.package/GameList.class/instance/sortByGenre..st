sorting
sortByGenre: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a genre asString < b genre asString]]
	ifFalse: [games sort: [:a :b | a genre asString > b genre asString]]