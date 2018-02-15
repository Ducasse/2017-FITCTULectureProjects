graphics
drawAllMovingObjects
	"draw all moving objects to prepared game plan"

	1 to: sizeX do: [ :i | 
		1 to: sizeY do: [ :j | 
			((map getObjectFromX: i Y: j) getObject isMemberOf: SRMOBox)
				ifTrue: [ graphicInstance redrawElementBoxOn: i And: j ].
			((map getObjectFromX: i Y: j) getObject isMemberOf: SRMOPlayer)
				ifTrue: [ graphicInstance redrawElementSokoOn: i And: j ] ] ]