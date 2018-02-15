*Dice
D10
	|bg|
	bg := DiceBag new.
	1 to: self do: [ 
							:i |
							bg addDie: (Die new: 10).
						].
	^ bg.