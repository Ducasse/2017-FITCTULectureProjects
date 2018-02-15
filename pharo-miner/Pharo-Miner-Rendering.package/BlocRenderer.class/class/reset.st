initialization
reset
	window := BlSpace new extent: 1280@720; title: 'Pharo Miner'.
	container := BlElement new layout: BlBasicLayout new; size: 1280@720.
	window root addChild: container.