sorting
sortByCompleted: aBoolean "true: ascending, false: descending"
	aBoolean
	ifTrue: [games sort: [:a :b | a completed]]
	ifFalse: [games sort: [:a :b | b completed]]