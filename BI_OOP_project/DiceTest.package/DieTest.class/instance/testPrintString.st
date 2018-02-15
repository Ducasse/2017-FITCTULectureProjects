tests
testPrintString
	|d faces|
	d := Die new.
	
	1 to: 10 do: [ 
							:i |
							faces := 10 atRandom.
							d := (d faces: faces).
							self assert: (d printString = ('D', (faces asString))).
					 ]. 