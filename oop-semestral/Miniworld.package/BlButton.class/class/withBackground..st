private
withBackground: anImage
	^ self
		withBackground: anImage
		rippleColor:
			(Color
				r: 0.13
				g: 0.59
				b: 0.95
				alpha: 0.5)