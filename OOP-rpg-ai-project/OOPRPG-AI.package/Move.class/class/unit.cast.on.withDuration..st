as yet unclassified
unit: aUnit cast: aSpell on: bUnit withDuration: aNumber

| turn |
turn := self new.
turn unit: aUnit.
turn target: bUnit.
turn spell: aSpell.
turn duration: aNumber.
turn newRound: false.
^turn.