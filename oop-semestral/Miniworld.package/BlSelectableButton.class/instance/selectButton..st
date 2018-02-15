event dispatching
selectButton: aPosition
	selected := true.
	self ripple: aPosition targetColor: self rippleColor onFinishedDo: [ :ripple | selectObject := ripple ].
	self onSelectFire: true