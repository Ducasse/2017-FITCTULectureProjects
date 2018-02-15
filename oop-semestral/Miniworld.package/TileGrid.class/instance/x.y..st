accessing
x: x y: y
	| index |
	index := x + (y * columns).

	^ self children at: index + 1.
