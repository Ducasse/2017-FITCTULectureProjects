positioning
modelMovedFrom: aPointFrom to: aPointTo
	"this is alternative to #modelMovedBy:. BlNumberTransition provides a way to do the animation by gradually relocating the element"

	BlNumberTransition new
		from: aPointFrom;
		to: (self positionFromModelLocation: aPointTo);
		onStepDo: [ :aPosition | self relocate: aPosition ];
		duration: 1 second;
		startOn: self