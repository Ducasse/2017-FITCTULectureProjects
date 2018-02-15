accessing
menuGameModel: aMenuGameModel teamName: aTeamName
	self removeChildren.
	listNum := -1.
	menuGameModel := aMenuGameModel.
	
	menuGameModel classLists
		do: [ :aClassList | 
			self addChild: (self newCListElement menuGameModel: aClassList).
			self addChild: (self newChampionNameLabelElement: (menuGameModel champNameArray at: listNum+1)). ] .
		
	self addChild: (self newNextButtonElement addEventHandler: (self newNextButtonEventListener gModel: aMenuGameModel)).
	self addChild: (self newTeamLabelElement: aTeamName).
		