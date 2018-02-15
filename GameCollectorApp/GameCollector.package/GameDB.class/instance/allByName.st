typing/selecting keys
allByName
	| s |
	
	s := SortedCollection sortBlock: [ :a :b | a name asUppercase <= b name asUppercase  ].
	s addAll: data.
	s.
	
	^ s