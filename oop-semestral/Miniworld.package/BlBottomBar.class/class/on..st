instance creation
on: aSpace
	| bb |
	bb := self new.
	bb
		constraintsDo: [ :c | 
			c vertical exact: 80.
			c horizontal matchParent ].
	aSpace addEventHandlerOn: BlSpaceResizeEvent do: [ :e | bb relocate: bb height @ aSpace height - bb height ].
	aSpace root addChild: bb.
	bb forceLayout.
	^ bb