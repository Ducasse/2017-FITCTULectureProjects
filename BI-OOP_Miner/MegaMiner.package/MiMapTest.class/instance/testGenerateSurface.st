tests
testGenerateSurface
	| offset block |
	self assert: (MiMap generateSurface: 1) == MiSurfaceBlock .
	self assert: (MiMap generateSurface: MiMap defaultWidth ) == MiSurfaceBlock .
	
	offset := (MiMap defaultWidth - MiMap buildings size) // 2.
	self assert: ( block := MiMap generateSurface: (0 + offset)) == MiSurfaceBlock .
	self assert: ( block := MiMap generateSurface: (1 + offset)) == MiRepairCenterBlock .
	self assert: ( block := MiMap generateSurface: (2 + offset)) == MiSurfaceBlock.
	
	1 to: MiMap defaultWidth do: [ :i|
			self assert: ( (block := MiMap generateSurface: i) inheritsFrom: MiPassableBlock  ) 
		 ].
	
	MiMap defaultWidth to: (MiMap defaultWidth + 100) do: [ :i|
			self assert: ( (block := MiMap generateSurface: i) inheritsFrom: MiPassableBlock  ) 
		 ]
	
	
