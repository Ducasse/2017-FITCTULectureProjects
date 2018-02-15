api-events
whenSelectedItemChanged: aBlock
	"Selection did change"
	selectionHolder selection whenChangedDo: [ :new :old :announcement :ann | 
		new == old
								ifFalse: [
		aBlock cull: (new ifNotNil: [ :item | item model ]) cull: old cull: announcement cull: ann ]
	]