Sokoban round - map for graphic:

I am 2D array representation of objects of game plan received from file.
Call me map from file :-)

You can add received map from file into me and you can get an objects from a specific position of me.

Examples:
| s |
s := SRMapFromFile map: XXX
s SRMapFromFile getObjectFromX: 5 andY: 6