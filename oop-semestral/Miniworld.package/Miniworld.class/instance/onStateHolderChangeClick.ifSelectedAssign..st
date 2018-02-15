initialization
onStateHolderChangeClick: aClick ifSelectedAssign: aSelectBlock
	aClick currentTarget selected
		ifTrue: [ self stateHolder: aSelectBlock value ]
		ifFalse: [ self stateHolder: Holder new ]