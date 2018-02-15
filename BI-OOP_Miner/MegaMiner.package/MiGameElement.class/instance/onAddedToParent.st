initialization
onAddedToParent
	"initialize keyboardHandler, after MiGameElement is added to some parent. Parent shoud by BlSpace root or BlElement currently setted in BlSpace."
	super onAddedToParent.
	self initKeyboardHandler: self space