actions
sellCargo
	"Answers the total price of the loaded cargo and removes it from the backpack. "

	| sum |
	sum := 0.
	bag do: [ :item | sum := sum + item price ].
	bag removeAll.
	^ sum