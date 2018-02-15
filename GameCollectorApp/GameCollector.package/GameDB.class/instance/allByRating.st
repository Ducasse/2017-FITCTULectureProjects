typing/selecting keys
allByRating
	| s |
	
	s := SortedCollection sortBlock: [ :a :b | 
		a rating isNil 
			ifTrue: [ true ] 
			ifFalse: [ b rating isNil 
				ifTrue: [ false ] 
				ifFalse: [ a rating <=b rating ] ] ]. 
	s addAll: data.
	s.
	
	^ s.