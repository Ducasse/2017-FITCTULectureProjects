instance creation
arrayToMatrix: anArray with: width height: height
	| counter |
	counter := 0.
	^ Matrix
		rows: height
		columns: width
		tabulate: [ :row :column | 
			counter := counter + 1.
			MiBlockHolder
				with: (anArray at: counter) asClass new]