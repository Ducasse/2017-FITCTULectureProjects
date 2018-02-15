accessing
from: aPositionFrom to: aPositionTo do: aBlock
	"Iterates through all BlockHolders between [aPositionFrom] and [aPositionTo]. Positions are Points with the same format as in #at: method.
	 Parameter aCodeBlock is evaluated with each of them."

	self
		atRows: aPositionFrom y
		to: aPositionTo y
		columns: aPositionFrom x
		to: aPositionTo x
		do: aBlock