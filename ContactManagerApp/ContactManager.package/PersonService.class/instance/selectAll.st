selection
selectAll
	^ Person
		selectAllSortBy:
			{(#lastName -> VOOrder ascending).
			(#firstName -> VOOrder ascending)}