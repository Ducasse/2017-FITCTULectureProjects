drawing
backgroundPaint
	<return: #BlPaint or: #Color>
	|type|
	type := card field type.
	
		type = Enum road
			ifTrue: [ ^ Color brown ].
		type = Enum teammate
			ifTrue: [ ^ Color r: 5 g: 0 b: 55 ].
		type = Enum forest
			ifTrue: [ ^ Color green darker ].
		type = Enum hole
			ifTrue: [ ^ Color black ].
		type = Enum wall
			ifTrue: [ ^ Color white ].
		type = Enum enemy
			ifTrue: [ ^ Color r:64 g:0 b:0 ].
		type = Enum me
			ifTrue: [ ^ Color yellow ].
							
		^ Color black