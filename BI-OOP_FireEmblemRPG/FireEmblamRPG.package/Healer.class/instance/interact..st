operations
interact: aChampion
		(self team = aChampion team)
		ifTrue: [self played: true. ^(self heal: aChampion)]
		ifFalse: [self played: true. ^(self attack: aChampion) ]