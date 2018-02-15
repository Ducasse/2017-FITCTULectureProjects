initialize
construct: AVariables count: aCount
| m |
m := self new.

m attack: 5.
m id: 'VAMPIRE'.
m health: 100.
m count: aCount.
m movementCurrent: 20.
m movementMax: 20.
m isRanged: false.

m variables: AVariables.
^m.