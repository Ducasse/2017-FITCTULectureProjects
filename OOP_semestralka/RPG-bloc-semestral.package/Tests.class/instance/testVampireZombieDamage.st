tests
testVampireZombieDamage
	|M1 M2 board VARS MONSTER_DB damageToZombie damageToVampire previousHealthVampire previousHealthZombie|
	board := GameBoard new.
	VARS := board variables.
	
   MONSTER_DB := VARS monsterDatabase.

   M1 := (MONSTER_DB getMonsterClone: 'VAMPIRE').
	M2 := (MONSTER_DB getMonsterClone: 'ZOMBIE').
	
	previousHealthVampire := (M1 healthTotal).
	previousHealthZombie := (M2 healthTotal).
	
	damageToVampire := (M2 attackMonster: M1).	
	self assert: (((previousHealthVampire - damageToVampire)= ((M1 healthMax * (M1 count - 1)) + M1 healthCurrent))).

   damageToZombie := (M1 attackMonster: M2).
	self assert: (((previousHealthZombie - damageToZombie)= ((M2 healthMax * (M2 count - 1)) + M2 healthCurrent))).

