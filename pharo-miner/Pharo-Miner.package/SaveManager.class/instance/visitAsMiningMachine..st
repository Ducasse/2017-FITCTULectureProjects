visiting
visitAsMiningMachine: aMiningMachine
	stream << aMiningMachine className; space.
	aMiningMachine keybind asOrderedCollection stonOn: (STONWriter on: stream).
	aMiningMachine transform position stonOn: (STONWriter on: stream).
	stream cr.