instance creation
neoJsonMapping: aMapper
	^ aMapper
		mapInstVarsFor: Point;
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| base target |
					reader
						parseMapKeysDo: [ :key | 
							key = 'base'
								ifTrue: [ base := reader nextAs:Point ] .
							key = 'target'
								ifTrue: [ target := reader nextAs:Point ] .
						
				
				 	 ] .
				(self base: base) target: target.	]].