initialization
initialize
	orderName := 'Order by first name'.
	orderBlock := [ :a :b | 
		a firstName < b firstName]