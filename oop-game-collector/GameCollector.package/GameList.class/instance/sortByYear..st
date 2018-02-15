sorting
sortByYear: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a releaseYear < b releaseYear]]
	ifFalse: [games sort: [:a :b | a releaseYear > b releaseYear]]