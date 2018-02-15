initialization
initialize
	window := BlSpace new.
	window position: 100@100.
	window extent: 342@386.
	
	uiBoard := (UIBoard new asElement
		relocate: 11@55;
		yourself).
		
	uiButton := (UIButton new asElement
		addEventHandler: (UIButtonEventListener new);
		relocate: ((window extent x/2)-13)@14;
		yourself
	).
		
	window root addChild: (
		(UIBackground new "width: (uiBoard width) height: (uiBoard height)" )asElement
		yourself
	) at: 1.	
	
	window root addChild: (
		UICounter new asElement
		relocate: 18@14;
		yourself
	) at: 2.
	
	window root addChild: (
		UICounter new asElement
		relocate: (window extent x-18-46)@14;
		yourself
	) at: 3.
	
	window root addChild: uiBoard at: 4.
	
	window root addChild: uiButton at: 5.