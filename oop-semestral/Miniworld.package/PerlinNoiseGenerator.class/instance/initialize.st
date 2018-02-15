instance creation
initialize
	super initialize.
	gradient := PerlinNoiseGenerator gradient.
	permutation := (0 to: 256) shuffled.	