initialization
construct: AVariables id: aID attack:  attack count: aCount health: health movement: AMovement
| m |
m := self new.

m attack: attack.
m id: aID.
m health: health.
m count: aCount.
m movementCurrent: AMovement.
m movementMax: AMovement.

m variables: AVariables.
^m.