methods
makeGridOfSize: rows by: cols
|grid array|

grid := TileGrid withColumns: cols.
array := (PerlinNoiseGenerator new) array: cols by: rows frequencies: { 1 . 2  }.

array do: [ :col | 
	grid add:
		(col collect: [ :tile |
			(tile < 0.65) ifTrue: [ Water new.] ifFalse: [
				(tile < 0.7) ifTrue: [ ShallowWater new. ] ifFalse: [
					(tile < 0.75) ifTrue: [ Sand new. ] ifFalse: [
						(tile < 0.775) ifTrue: [ Mud new. ] ifFalse: [
							(tile < 0.98) ifTrue: [Grass new. ] ifFalse: [
								(tile < 1.01) ifTrue: [Wall new.] ifFalse: [Pavement new.]]]]]]])].

"array do: [ :col | 
	grid add:
		(col collect: [ :tile |
			(tile < 0.85) ifTrue: [ Water new.] ifFalse: [
				(tile < 0.87) ifTrue: [ ShallowWater new. ] ifFalse: [
					(tile < 0.89) ifTrue: [ Sand new. ] ifFalse: [
						(tile < 0.91) ifTrue: [ Mud new. ] ifFalse: [
							(tile < 0.99) ifTrue: [Grass new. ] ifFalse: [Wall new.]]]]]]) ]."
^grid.