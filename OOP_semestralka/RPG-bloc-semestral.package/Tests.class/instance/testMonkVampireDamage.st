tests
testMonkVampireDamage
	|M1 M2 board VARS MONSTER_DB damageToMonk damageToVampire previousHealthMonk previousHealthVampire|
	board := GameBoard new.
	VARS := board variables.
	
   MONSTER_DB := VARS monsterDatabase.

   M1 := (MONSTER_DB getMonsterClone: 'MONK').
	M2 := (MONSTER_DB getMonsterClone: 'ZOMBIE').
	
	previousHealthMonk := (M2 healthTotal).
	previousHealthVampire := (M1 healthTotal).
   damageToMonk := (M1 attackMonster: M2).
	damageToVampire := (M2 attackMonster: M1).
		
	self assert: (((previousHealthMonk - damageToMonk)= ((M2 healthMax * (M2 count - 1)) + M2 healthCurrent))).
	self assert: (((previousHealthVampire - damageToVampire) = ((M1 healthMax * (M1 count - 1)) + M1 healthCurrent))).