as yet unclassified
resetVisited
	1 to: sizeX do: [ :i |
			1 to: sizeY do: [ :j |
					((tiles at: i) at: j) visited: false
				]
		]