as yet unclassified
attackWith: attacker on: defender
	|calculatedDmg calculatedDefense|
	calculatedDmg := self attackersDamage: attacker. 
	defender addHealth: calculatedDmg * (-1).
	gameManager gameLog addLog: '"', attacker name, '" attacked "', defender name, '" and dealt ',calculatedDmg asString, ' dmg'.
	(defender health <= 0) ifTrue: [ 
			gameManager fightOrderQueue remove: defender.
			gameManager battleMap putCharacter: nil atPosition: defender position ]
	
	