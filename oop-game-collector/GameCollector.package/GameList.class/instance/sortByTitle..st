sorting
sortByTitle: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a title < b title]]
	ifFalse: [games sort: [:a :b | a title > b title]]