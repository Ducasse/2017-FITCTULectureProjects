accessing
onSelected
	selState ifTrue: [ selState := false. ] ifFalse: [ selState := true. ].
	self invalidate.
	"self halt."
	
