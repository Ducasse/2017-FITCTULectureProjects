initialization
addLast: anUnit
super addLast: anUnit.
playerList addIfNotPresent: (anUnit playerOwner). 