private
headUrlAsMorph
	|morph|
	morph := (ZnEasy getJpeg:  self headUrl) asMorph.
	morph form: (morph form magnifyBy: 0.5).
	^ morph