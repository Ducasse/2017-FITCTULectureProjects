accessing
renderer
	renderer ifNil: [ self error: 'Missing Renderer. Probably not properly inicialized.' ].
	^ renderer