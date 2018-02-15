tests
testRoll
	|d|
	d := Die new.
	
	1 to: 10 do: [ 
							:i |
							|n|
							n := d roll.
							self assert: (n >= 1).
							self assert: (n <= 6).
					 ].