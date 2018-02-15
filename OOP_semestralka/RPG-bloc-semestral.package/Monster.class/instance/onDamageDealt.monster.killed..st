events
onDamageDealt: aDamage monster: TargetMonster killed: aKilled
	"Called whenever this monster deals damage to another one"
	|t|	
	t := ((self textDatabase) messageAboutDamage: self damage: aDamage targetMonster: TargetMonster), '.'.
	Transcript show: t; cr.
	(aKilled > 0)
		ifTrue: [ t := t , ' ' , ((self textDatabase) messageAboutPerish: TargetMonster killed: aKilled) ].
	
	Transcript show: t; cr.