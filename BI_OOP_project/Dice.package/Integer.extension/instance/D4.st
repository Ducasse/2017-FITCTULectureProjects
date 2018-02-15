*Dice
D4
	|bg|
	bg := DiceBag new.
	1 to: self do: [ 
							:i |
							bg addDie: (Die new: 4).
						].
	^ bg.