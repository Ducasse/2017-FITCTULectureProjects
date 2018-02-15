accessing
getCardOnY: anY andX: anX
	|returnCard|

	self assert: [ anX > 0 ]
		description: [ 'X(', anX asString, ') <= 0' ].
	self assert: [ anX <= self getHeigth ]
		description: [ 'X(', anX asString, ') > ', self getHeigth asString ].
	self assert: [ anY > 0 ]
		description: [ 'Y(', anY asString, ') <= 0' ].
	self assert: [ anY <= self getWidth ]
		description: [ 'Y(', anY asString, ') > ', self getWidth asString ].
	
	returnCard := cards at: ((anX-1) * self getWidth) + anY. "x-1 rows before + y"
	^ returnCard