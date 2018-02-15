tests
testMonkZombieDamage
 |M1 M2 board VARS MONSTER_DB damageToZombie damageToMonk previousHealthMonk previousHealthZombie|
 board := GameBoard new.
 VARS := board variables.
 
   MONSTER_DB := VARS monsterDatabase.

   M1 := (MONSTER_DB getMonsterClone: 'MONK').
 	M2 := (MONSTER_DB getMonsterClone: 'ZOMBIE').

	previousHealthMonk := (M1 healthTotal).
	previousHealthZombie := (M2 healthTotal).
   damageToZombie := (M1 attackMonster: M2).
 	damageToMonk := (M2 attackMonster: M1).

	self assert: (((previousHealthMonk - damageToMonk)= ((M1 healthMax * (M1 count - 1)) + M1 healthCurrent))).
	self assert: (((previousHealthZombie - damageToZombie)= ((M2 healthMax * (M2 count - 1)) + M2 healthCurrent))).