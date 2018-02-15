initialization
initialize
	orderName := 'Order by last name'.
	orderBlock := [ :a :b | 
		a lastName < b lastName]