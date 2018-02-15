accessing
selected: aBool
	selected := aBool.
	BlUniverse defer: [self invalidate]