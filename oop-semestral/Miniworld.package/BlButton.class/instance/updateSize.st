actions
updateSize
	dynamicSize
		ifFalse: [ ^ self ].
	self textElement forceLayout.
	self size: self textElement extent + self insets extent