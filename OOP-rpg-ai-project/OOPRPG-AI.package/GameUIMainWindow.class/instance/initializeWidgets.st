initialization
initializeWidgets
	gameOutput := self instantiate: AppendableTextModel.
	myTeamOverview := self instantiate: AppendableTextModel.
	enemyTeamOverview := self instantiate: AppendableTextModel.
	
	gameOutput enabled: false.
	myTeamOverview enabled: false.
	enemyTeamOverview enabled: false.
	
	txtMyTeam := self newLabel.
	txtEnemyTeam := self newLabel.
	txtCurrentPlayer := self newLabel.
	
	btnAttack := self newButton.
	btnGuard := self newButton.
	btnSpell := self newButton.
	btnTurn := self newButton.
	
	self aiMode.
	
	btnAttack label: 'Attack'.
	btnGuard label: 'Guard'.
	btnSpell label: 'Cast spell'.
	btnTurn label: 'Next turn'.
	
	txtMyTeam label: 'Team 1 overview'.
	txtEnemyTeam label: 'Team 2 overview'.
	
	self focusOrder 
		add: btnAttack;
		add: btnGuard;
		add: btnSpell.