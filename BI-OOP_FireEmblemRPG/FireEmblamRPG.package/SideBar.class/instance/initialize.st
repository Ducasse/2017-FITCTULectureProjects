initialization
initialize
	space := BlSpace new.
	container := BlElement new 
		layout: BlFlowLayout vertical;
		background: Color gray  ;
		size: 300@600.
	space root addChild: container .
	space extent: 300@600.
	self showMenu.
	space position: 960@0.