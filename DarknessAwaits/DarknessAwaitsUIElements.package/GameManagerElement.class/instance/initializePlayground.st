initialization
initializePlayground
	| playground |
	
	battleField := self initializeBattleField.
	infoTab := InfoTabContainerElement new.
	infoTab gameManager: gameManager .
	battleLog  := GameLogElement new .
	battleLog gameLog: gameManager gameLog.
	optionTab := OptionTabElement new.
	optionTab gameStateManager: self gameManager gameStateManager.
	
	self addChilds.
	
	playground := BlSpace new.
	playground extent: 644@572.

	playground root addChild: self.
	playground show.