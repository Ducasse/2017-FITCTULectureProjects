methods
array: rows by: cols frequencies: fs
^ fs inject: (Array new: rows withAll: (Array new: cols withAll: 0.0)) 
		into: 
		[ :array :f |
			array +
				((0 to: (rows - 1)) collect: [ :row |
					(0 to: (cols - 1)) collect: [ :col |
						1.0/f * (self x: f * (col/cols) y: f * (row/rows)).
					]
				])
		].