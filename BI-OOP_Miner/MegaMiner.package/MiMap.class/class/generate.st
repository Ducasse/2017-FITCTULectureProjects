generating
generate
	"Generates a random Matrix of BlockHolders. The generated matrix has #defaultHeight rows and #defaultWidth columns. The first row is the surface row and contains all necessary building."

	^ Matrix
		rows: self defaultHeight
		columns: self defaultWidth
		tabulate: [ :row :column | 
			MiBlockHolder
				with:
					(row = 1
						ifTrue: [ MiMap generateSurface: column ]
						ifFalse: [ MiMap generateUnderground: row ]) new ]