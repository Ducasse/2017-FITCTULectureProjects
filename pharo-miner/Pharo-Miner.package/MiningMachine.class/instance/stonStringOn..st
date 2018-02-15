serialization
stonStringOn: aStream
	| st |
	st := STONWriter on: aStream.
	self keybind asOrderedCollection stonOn: st.
	self transform position stonOn: st.