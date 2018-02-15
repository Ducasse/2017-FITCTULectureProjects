accessing
instance
	^ Instance ifNil: [
		Instance := self basicNew.
		"Transcript open.
		Transcript clear.
		Transcript show: 'created new instance.'."
	]