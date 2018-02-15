private
tailTypeAsMorph
	|morph|
	morph := (ZnEasy getPng: self tailTypeUrl) asMorph.
	morph form: (morph form magnifyBy: 0.12).
	^ morph