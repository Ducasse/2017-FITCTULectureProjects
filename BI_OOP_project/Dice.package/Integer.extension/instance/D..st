*Dice
D: aNumber
	|bg|
	bg := DiceBag new.
	1 to: self do: [ 
							:i |
							bg addDie: (Die new: aNumber).
						].
	^ bg.