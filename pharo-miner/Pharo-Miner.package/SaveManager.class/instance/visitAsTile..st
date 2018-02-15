visiting
visitAsTile: aTile
	stream << aTile className; space.
	aTile transform position stonOn: (STONWriter on: stream).
	stream cr.