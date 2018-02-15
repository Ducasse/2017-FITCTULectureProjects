running
start	
	self exists not | restart isNil not
		ifTrue: [ MSTimer stop. "make sure the timer is NOT running"
			ui isVisible ifFalse: [ ui show ].
			ui uiButton statePlaying.
			ui mines: board apiMinesCounter ]
		ifFalse: [ UIManager default inform: 'MineSweeperGame is already running!!' ]