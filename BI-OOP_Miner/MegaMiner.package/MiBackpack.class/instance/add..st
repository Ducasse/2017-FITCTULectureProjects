actions
add: aProfitableBlock
	"Adds a single ore to the backpack. If the backpack if full, the ore will not be stored."

	capacity > bag size
		ifTrue: [ bag add: aProfitableBlock ]