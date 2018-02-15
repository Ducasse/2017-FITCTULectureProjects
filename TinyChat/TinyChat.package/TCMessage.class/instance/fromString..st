action
fromString: aString
	"Compose a message from a string of this form 'sender>message'."
	| items |
	items := aString substrings: separator.
	self sender: items first.
	self text: items second.