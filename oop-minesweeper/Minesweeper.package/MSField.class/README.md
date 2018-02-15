Represents one field in the grid.

Members:
	flags:
		covered - signifies whether the field was uncovered or not
		marked - signifies whether the field was marked (even non mine field are markable by the player)
	coordinates - x@y coordinates of the field in the game matrix (grid)
	announcer - announcer for notifying other objects of clicks
	neighbours - a set of neighbouring fields
