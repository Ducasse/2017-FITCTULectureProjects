operations
attack: aChampion
	^ String
		streamContents: [ :result | 
			| damage experience oldLevel |
			damage := (self level abilities attack - (aChampion level abilities defense / 2)) ceiling.
			damage < 1
				ifTrue: [ damage := 1 ].
			aChampion dealDamage: damage.
			result nextPutAll: 'Champion ' , self name , ' dealt ' , damage asString , ' damage to ' , aChampion name.
			aChampion actualHP < 0
				ifTrue: [ aChampion actualHP: 0.
					experience := (aChampion level level / self level level * 100) ceiling.
					result cr.
					result nextPutAll: 'Champion ' , aChampion name , ' died' ]
				ifFalse: [ experience := (aChampion level level / self level level * 10) ceiling.
					result cr.
					result
						nextPutAll: 'Champion ' , aChampion name , ' has ' , aChampion actualHP asString , ' / ' , aChampion level abilities health asString ].
			result cr.
			result nextPutAll: 'Champion ' , aChampion name , ' gain ' , experience asString , ' experience '.
			oldLevel := self level level.
			self addExperience: experience.
			self level level > oldLevel
				ifTrue: [ result cr.
					result
						nextPutAll:
							'Champion ' , aChampion name , ' gain ' , (self level level - oldLevel) asString , ' new levels now is ' , self level level asString
								, ' level' ] ]