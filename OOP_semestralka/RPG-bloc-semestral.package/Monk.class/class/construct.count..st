initialize
construct: AVariables count: aCount
| m |
m := self new.

m attack: 12.
m id: 'MONK'.
m health: 25.
m count: aCount.
m movementCurrent: 1.
m movementMax: 1.
m isRanged: true.

m variables: AVariables.
^m.