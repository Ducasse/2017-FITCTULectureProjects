initialize
construct: AVariables count: aCount
| m |
m := self new.

m attack: 5.
m id: 'ZOMBIE'.
m health: 100.
m count: aCount.
m movementCurrent: 2.
m movementMax: 2.
m isRanged: false.

m variables: AVariables.
^m.