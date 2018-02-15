sorting
sortByRating: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a rating < b rating]]
	ifFalse: [games sort: [:a :b | a rating > b rating]]