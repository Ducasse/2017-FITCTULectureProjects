operations
interact: aChampion
		(aChampion isDead)
		ifTrue: [^'Cant attack corpse'].
		(self team = aChampion team)
		ifTrue: [^'Cant attack friendly champion']
		ifFalse: [ self played: true.^(self attack: aChampion)   ]