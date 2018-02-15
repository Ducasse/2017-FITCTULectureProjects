instance creation
neoJsonMapping: aMapper
	^ aMapper
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| tier fuel |
					reader
						parseMapKeysDo: [ :key | 
							key = 'tier'
								ifTrue: [ tier := reader next ] .
							key = 'fuelAmount'
								ifTrue: [ fuel := reader next ] ].
					self atTier: tier withFuel: fuel ] ]