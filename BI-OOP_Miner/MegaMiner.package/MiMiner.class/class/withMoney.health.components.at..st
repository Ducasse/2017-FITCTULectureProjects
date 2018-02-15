accessing
withMoney: anAmount health: aHealth components: aComponentHolder at: aPositon
	^ ((((self basicNew money: anAmount) health: aHealth) components: aComponentHolder) position: aPositon) initialize.