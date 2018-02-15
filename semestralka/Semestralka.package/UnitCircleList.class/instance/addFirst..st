initialization
addFirst: anUnit
super addFirst: anUnit.
playerList addIfNotPresent: (anUnit playerOwner). 