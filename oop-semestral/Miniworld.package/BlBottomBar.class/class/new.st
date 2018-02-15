instance creation
new
	^ self basicNew
		initialize;
		background:
			(Color
				r: 0.2
				g: 0.2
				b: 0.2
				alpha: 0.7);
		layout: BlLinearLayout horizontal;
		padding: (BlInsets all: 10)