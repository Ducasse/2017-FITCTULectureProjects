typing/selecting keys
allByRelease
	| s |
	
	s := SortedCollection sortBlock: [ :a :b | 
		a release isNil 
			ifTrue: [ true ] 
			ifFalse: [ b release isNil 
				ifTrue: [ false ] 
				ifFalse: [ a release <=b release ] ] ]. 
	s addAll: data.
	s.
	
	^ s.