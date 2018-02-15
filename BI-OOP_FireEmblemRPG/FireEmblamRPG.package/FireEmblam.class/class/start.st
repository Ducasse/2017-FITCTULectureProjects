accessing
start
	|space gameElem |
	space := BlSpace new.
	space extent: 660@660.
	gameElem := GameManagerElement  new.
	space root addChild: gameElem.
	space show.
	space position: 300@0.