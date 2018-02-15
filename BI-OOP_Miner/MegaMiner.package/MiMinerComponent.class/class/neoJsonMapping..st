instance creation
neoJsonMapping: aMapper
	^ aMapper
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| tier |
					reader
						parseMapKeysDo: [ :key | 
							key = 'tier'
								ifTrue: [ tier := reader next ] ].
					self atTier: tier ] ]