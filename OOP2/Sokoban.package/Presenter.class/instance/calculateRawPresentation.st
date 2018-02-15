canvas methods
calculateRawPresentation
	| cell |
	rawField := RawField new initialize: self pixelsSize.
	1 to: height do: [ :h | 
		1 to: width do: [ :w | 
			x := w.
			y := h.
			cell := self level atX: w Y: h.
			cell acceptPresenter: self ] ].
	
	y := height + 1.
	x := 1. level acceptCurrentScorePresenter: self.
	x := 2. level acceptOptimalScorePresenter: self.
	x := 3. level acceptBestScorePresenter: self.
	4 to: width do: [ :w | 
		x := w.
		level acceptInfoPresenter: self]
	