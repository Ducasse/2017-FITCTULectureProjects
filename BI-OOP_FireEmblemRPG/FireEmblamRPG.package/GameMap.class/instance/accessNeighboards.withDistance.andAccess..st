actions
accessNeighboards: aCard withDistance: distance andAccess: access
	|x y tmpcard field|
	x := aCard field x.
	y := aCard field y.
	
	(distance >= 1 or: access >= 1)
	ifTrue: [ 
		y > 1
		ifTrue: [ "set left as accessable"
			tmpcard := self getCardOnY: y-1 andX: x.
			field := tmpcard field.
			(field movable and: distance >= 1)
				ifTrue: [ field access: true ].
			(field interactable and: access >= 1)
				ifTrue: [ field access: true ].
			tmpcard field: field.
			self accessNeighboards: tmpcard withDistance: (distance-1) andAccess: (access-1).
		].
		y < self getWidth 
		ifTrue: [ "set right as accessable"
			tmpcard := self getCardOnY: y+1 andX: x.
			field := tmpcard field.
			(field movable and: distance >= 1)
				ifTrue: [ field access: true ].
			(field interactable and: access >= 1)
				ifTrue: [ field access: true ].
			tmpcard field: field.
			self accessNeighboards: tmpcard withDistance: (distance-1) andAccess: (access-1).
		].
		
		x > 1
		ifTrue: [ "set up as accesable"
			tmpcard := self getCardOnY: y andX: x-1.
			field := tmpcard field.
			(field movable and: distance >= 1)
				ifTrue: [ field access: true ].
			(field interactable and: access >= 1)
				ifTrue: [ field access: true ].
			tmpcard field: field.
			self accessNeighboards: tmpcard withDistance: (distance-1) andAccess: (access-1).
		].
		x < self getHeigth 
		ifTrue: [ "set down as accessable"
			tmpcard := self getCardOnY: y andX: x+1.
			field := tmpcard field.
			(field movable and: distance >= 1)
				ifTrue: [ field access: true ].
			(field interactable and: access >= 1)
				ifTrue: [ field access: true ].
			tmpcard field: field.
			self accessNeighboards: tmpcard withDistance: (distance-1) andAccess: (access-1).
		].
	]