setting
changeText: aString
	content := aString.
	Transcript show: content asString.
	BlTransformAnimation new startOn: self.