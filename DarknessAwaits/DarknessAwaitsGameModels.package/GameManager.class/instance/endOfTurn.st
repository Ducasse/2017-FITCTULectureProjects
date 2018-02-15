accesing
endOfTurn
	fightOrderQueue first isActive: false.
	fightOrderQueue nextCharacterOnTurn.
	fightOrderQueue first isActive: true.
	battleMap map first announcer announce: DrawCharacterAnnouncement new.
	(fightOrderQueue getCharacterOnTurn isMemberOf: Monster) ifTrue:[
		self makeAIMove.
		self endOfTurn.
		]