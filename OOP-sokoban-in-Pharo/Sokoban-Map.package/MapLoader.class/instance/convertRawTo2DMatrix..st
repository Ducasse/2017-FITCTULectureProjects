internal processing
convertRawTo2DMatrix: aRawMap
	map := ( Array new: height ) .
	1 to: height
		do: [ :i |
			map at: i put: ( Array new: width ) . 
			1 to: width do: [ :j | |rawChar|
				rawChar := ( aRawMap at: i ) at: j . 
				( map at: i ) at: j put: rawChar . ]] .
