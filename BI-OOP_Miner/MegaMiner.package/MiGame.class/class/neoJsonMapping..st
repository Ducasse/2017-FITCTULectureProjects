instance creation
neoJsonMapping: aMapper
 ^	aMapper
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| miner map |
					reader
						parseMapKeysDo: [ :key | 
							key = 'miner'
								ifTrue: [ miner := reader nextAs: MiMiner ].
							key = 'map'
								ifTrue: [ map := reader nextAs: MiMap]].
				self miner:miner map: map ]].