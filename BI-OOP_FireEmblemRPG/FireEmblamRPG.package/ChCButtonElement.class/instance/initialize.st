initialization
initialize 
	super initialize. 
	self size: 130 @ 30. 
	"color := Color darkGray."
	selState := false.
	self button: (ChCButtonModel new).
