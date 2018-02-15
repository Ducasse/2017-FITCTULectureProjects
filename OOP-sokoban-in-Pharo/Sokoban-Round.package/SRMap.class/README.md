Sokoban round - map:

I am 2D array representation of objects of game plan.
Call me map :-)

You can add/get an objects into/from a specific position of me.

Example:
| s |
s := SRMap sizeX: 10 andY: 10.
s addObject: XXX toX: 5 andY: 6
s getObjectFromX: 5 andY: 6