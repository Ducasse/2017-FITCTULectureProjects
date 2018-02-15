accessing
neoJsonMapping: aMapper
	^ aMapper
		mapInstVarsFor: Point;
		mapInstVarsFor: MiHealth;
		for: self
			customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| money health position components |
					reader
						parseMapKeysDo: [ :key | 
							key = 'money'
								ifTrue: [ money := reader next ].
							key = 'health'
								ifTrue: [ health := reader nextAs: MiHealth ].
							key = 'position'
								ifTrue: [ position := reader nextAs: Point ].
							key = 'components'
								ifTrue: [ components := reader nextAs: MiMinerComponentsHolder ] ].
					self
						withMoney: money
						health: health
						components: components
						at: MiMinerStartPosition ] ]