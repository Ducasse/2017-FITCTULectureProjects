initialization
initializeBattleField
	| newBattleField |
	newBattleField  := BattleFieldElement new.
	newBattleField battleField: self gameManager battleMap.
	^ newBattleField