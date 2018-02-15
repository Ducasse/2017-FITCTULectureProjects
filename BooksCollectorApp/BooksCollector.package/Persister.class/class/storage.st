accessing
storage
	Storage ifNil: [ Storage := (Dictionary new) ].
	^ Storage