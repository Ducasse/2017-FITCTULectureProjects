initialization
attributes
	(attributes class = Attributes) ifFalse: [ attributes := Attributes initializeByValues: attributes ]. 
	
	^ attributes 