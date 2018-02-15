initialization
initialize
	super initialize.
	number := 0.
	clicked := false.
	flagged := false.
	mine := false.
	color := (Color r: 189 g: 189 b: 189 range: 255 ).
	self pxSize: 20.
	self size: pxSize@pxSize.
	edge := 2.
	self lightColor: (Color r: 255 g: 255 b: 255 range: 255).
	self shadeColor: (Color r: 123 g: 123 b: 123 range: 255 ).
	
	numColors := {
  		0 -> [ Color black alpha: 0].
  		1 -> [ Color blue ].
  		2 -> [ Color r: 0 g: 123 b: 0 range: 255 ].
		3 -> [ Color red ].
		4 -> [ Color blue ].
		5 -> [ Color brown ].
		6 -> [ Color brown ].
		7 -> [ Color brown ].
		8 -> [ Color brown ].		
	} asDictionary.