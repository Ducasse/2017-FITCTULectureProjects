serialization
stonStringOn: aStream
	| st |
	st := STONWriter on: aStream.
	self transform position stonOn: st.
	