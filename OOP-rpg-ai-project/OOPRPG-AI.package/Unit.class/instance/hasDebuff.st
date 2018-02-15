testing
hasDebuff
	|toRemove|
	toRemove := (effects select: [ :each| each isDebuff ]).
	^ (toRemove size > 0).