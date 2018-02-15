private
headTypeAsMorph
	| morph |
	morph := (ZnEasy getPng: self headTypeUrl) asMorph.
	morph form: (morph form magnifyBy: 0.2).
	^ morph