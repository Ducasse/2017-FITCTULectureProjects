adding
orderGames: pGames by: orderedBy mode: mode
	|sortBlock modeBlock sorted|
	(mode == #desc) ifTrue: [ 
		modeBlock := [ :e1 :e2 | e1 > e2 ] 
		].
	(mode == #asc) ifTrue: [ 
		modeBlock := [ :e1 :e2 | e1 <= e2 ]
		 ].
	(orderedBy == #id) ifTrue: [ 
		sortBlock := [ :g1 :g2 | modeBlock value: (g1 id) value: (g2 id) ]
		 ].
	(orderedBy == #name) ifTrue: [ 
		sortBlock := [ :g1 :g2 | modeBlock value: (g1 name) value: (g2 name) ]
		 ].
	(orderedBy == #description) ifTrue: [ 
		sortBlock := [ :g1 :g2 | modeBlock value: (g1 desc) value: (g2 desc) ]
		 ].
	(orderedBy == #length) ifTrue: [ 
		sortBlock := [ :g1 :g2 | modeBlock value: (g1 length) value: (g2 length) ]
		 ].
	
	sorted := SortedCollection sortBlock: sortBlock.
	sorted addAll: pGames.
	^sorted.