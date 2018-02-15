loading
loadNumberFromLine: aLine
	|res|
	res := 0 .
	3 to: aLine size
		do: [ :i | |char|
			char := (( aLine at: i ) asInteger - 48 ) .
			( self isBetween1and9: char )
				ifFalse: [ ^ nil ] .
			res := self shiftLeft: res add: char .
			] .
	^ res .
