private
ripple: aPosition targetColor: aColor onFinishedDo: aBlock
	| r e length sAnim aAnim |
	length := 400 milliSeconds.
	e := BlEllipse diameter: 1.
	r := BlElement new
		geometry: e;
		size: 1 @ 1.
	self addChildFirst: r.
	r relocate: (aPosition x - 1) @ (aPosition y - 1).
	sAnim := (BlTransformAnimation scale: 200 @ 200)
		easing: BlEasing linear;
		duration: length;
		target: r.
	self rippleColor = aColor
		ifFalse: [ aAnim := BlColorTransition new
				from: self rippleColor;
				to: aColor;
				duration: length;
				onStepDo: [ :c | r background: c ].
			BlParallelAnimation new
				addAll:
					{sAnim.
					aAnim};
				onFinishedDo: [ aBlock value: r ];
				start ]
		ifTrue: [ r background: rippleColor .
			sAnim
				onFinishedDo: [ aBlock value: r ];
				start ]