inspecting
gtInspectorMinerIn: composite
	<gtInspectorPresentationOrder: 0>
	
	composite bloc
		title: 'Miner' translated;
		element: [ self ];
		act: [ :pres | model performMove: MiDirectionLeft new ]
			icon: #back asIcon
			entitled: 'Move left';
		act: [ :pres | model performMove: MiDirectionDown new ]
			icon: #down asIcon
			entitled: 'Move down';
		act: [ :pres | model performMove: MiDirectionUp new]
			icon: #up asIcon
			entitled: 'Move up';
		act: [ :pres | model performMove: MiDirectionRight new ]
			icon: #forward asIcon
			entitled: 'Move right';
		act: [ :pres | model performInteract]
			icon: #testGreen asIcon
			entitled: 'Interact'			