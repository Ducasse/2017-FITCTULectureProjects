actions
roll
	|res|
	res := 0.
	diceBag do: [ :each | res := res + (each roll) ].
	^ res.