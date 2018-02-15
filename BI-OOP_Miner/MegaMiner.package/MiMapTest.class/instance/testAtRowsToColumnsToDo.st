tests
testAtRowsToColumnsToDo
	| map rowStart rowEnd debug|
	map := MiMap random.
	
	rowStart := 2.
	rowEnd := 4.
	
	1 to: map width do: [ :w | 
		rowStart to: rowEnd do: [ :r|
			self assert: ((debug := (map blocks at: r at: w)) block  class = MiUndergroundBlock) not .
		]
	].
	
	map atRows: rowStart  to: rowEnd  columns: 1  to: map width do: [ :bloc| bloc mineOutBlock  ].
	
	1 to: map width do: [ :w | 
		rowStart to: rowEnd do: [ :r|
			self assert: (debug := (map blocks at: r at: w)) block  class = MiUndergroundBlock .
		]
	].
	
	
