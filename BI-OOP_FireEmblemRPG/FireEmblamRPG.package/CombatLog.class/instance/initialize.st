initialization
initialize
	space := BlSpace new.
	content := OrderedCollection new.
	container := BlElement new 
		layout: BlFlowLayout vertical;
		background: Color lightGray ;
		size: 300@300.
	space root addChild: container .
	space extent: 300@300.
	self showLog.
	space position: 00@0000.