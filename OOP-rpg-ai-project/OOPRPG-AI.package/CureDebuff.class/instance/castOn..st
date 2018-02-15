as yet unclassified
castOn: aUnit

   | toRemove |

	(super castOn: aUnit) ifFalse: [^ 0].
	toRemove := (aUnit effects select: [ :each | each isDebuff ]).
	
	toRemove do: [ :each | 
	each remove.
	aUnit log: 'got his ', each class asString, ' debuff cured.'.
	aUnit effects remove: each. ].
	^ toRemove size.