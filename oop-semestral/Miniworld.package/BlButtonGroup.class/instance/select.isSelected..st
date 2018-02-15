actions
select: target isSelected: isSelected
	isSelected
		ifTrue: [ self deselectChild
				ifTrue: [ selected := target ] ]
		ifFalse: [ selected := nil ]