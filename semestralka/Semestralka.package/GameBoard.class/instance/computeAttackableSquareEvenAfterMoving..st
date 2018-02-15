as yet unclassified
computeAttackableSquareEvenAfterMoving: anUnit
|finalSet|
finalSet := self computeReachableSquareForAttack: anUnit.
(self computeReachableSquareForMove: anUnit) do: [ :each | ((self AImoveCurrentUnitToSquare: each) computeReachableSquareForAttack: anUnit) do: [ :move | finalSet addIfNotPresent: move ] ].
^finalSet