as yet unclassified
unit: aUnit attacked: bUnit dealing: aNumber crit: aBool

| turn |
turn := self new.
turn unit: aUnit.
turn target: bUnit.
turn damage: aNumber.
turn newRound: false.
turn crit: aBool.
^turn.