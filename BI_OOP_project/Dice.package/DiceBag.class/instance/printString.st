printing
printString
	|res cntr|
	res := ''.
	cntr := 0.
	diceBag doWithOccurrences: [ :key :value | res := res, (value asString, key asString).
															cntr := cntr + 1.
															(cntr < (diceBag valuesAndCounts keys size)) 
																ifTrue: [ res := res, ' + '. ].
																
										].
	^ res.