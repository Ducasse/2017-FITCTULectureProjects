events
onDamageDealt: aDamage monster: TargetMonster killed: aKilled
	"Called whenever this monster deals damage to another one"
	super onDamageDealt: aDamage monster: TargetMonster killed: aKilled.
	healthCurrent := healthCurrent + 3.
	