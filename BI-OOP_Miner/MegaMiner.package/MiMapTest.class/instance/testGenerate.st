tests
testGenerate
	| matrix debug |
	matrix := MiMap generate .
	
	self assert: matrix columnCount = MiMap defaultWidth & matrix rowCount = MiMap defaultHeight .
	
	self assert: (matrix at: 1 at: 1) isNotNil.
	self assert: (matrix at: 1 at: matrix columnCount) isNotNil.
	self assert: (matrix at: matrix rowCount at: 1) isNotNil.
	self assert: (matrix at: matrix rowCount at: matrix columnCount) isNotNil.
	
	self assert: (matrix at: matrix rowCount/2 at: matrix columnCount/2) isNotNil.
	
	1 to: matrix columnCount do: [ :c |
		1 to: matrix rowCount do: [ :r |
			r = 1 ifTrue: [ self assert: ( (debug := (matrix at: r at: c) block) class inheritsFrom: MiPassableBlock ) ].
			r > 1 ifTrue: [ self assert: ( (debug := (matrix at: r at: c) block) class inheritsFrom: MiNotPassableBlock ) ].
		]
	 ].
	
