api-events-compatibility
whenSelectedItemChanged: aBlock
	"Selection did change"

	selectionHolder
		whenChangedDo: [ :col | 
			col
				ifNil: [ aBlock value: nil ]
				ifNotNil: [ col isEmpty
						ifTrue: [ aBlock value: nil ]
						ifFalse: [ 
							lastSelected == col last
								ifFalse: [ aBlock
										value:
											(col last lastClicked
												ifTrue: [ col last content ]
												ifFalse: [ nil ]) ] ] ] ]