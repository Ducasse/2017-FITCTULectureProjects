sorting
sortByPrice: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a price < b price]]
	ifFalse: [games sort: [:a :b | a price > b price]]