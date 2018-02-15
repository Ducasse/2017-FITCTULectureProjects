creation
fromUnit: aUnit

| gUnit |
gUnit := self new.
gUnit hp: (aUnit hp).
gUnit nickname: (aUnit nickname).
^ gUnit.