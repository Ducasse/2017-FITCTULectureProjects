accessing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ title hash bitXor: (description  hash bitXor: enabled hash)