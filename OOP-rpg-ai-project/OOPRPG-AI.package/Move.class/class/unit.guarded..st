as yet unclassified
unit: aUnit guarded: bUnit

| turn |
turn := self new.
turn unit: aUnit.
turn target: bUnit.
turn guard: (aUnit as: Unit) hp. 
turn newRound: false.
^turn.