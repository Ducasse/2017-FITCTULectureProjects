initialization
initializeAlgorithmButtons
	| group algorithms |
	group := BlButtonGroup new.
	group size: 110 @ 200.
	self space root addChild: group.
	self space addEventHandlerOn: BlSpaceResizeEvent do: [ :e | group relocate: (self space width - 120) @ 0 ].
	algorithms := {AStar.
	BFS.
	DFS.
	Dijkstra}.
	algorithms
		with:
			{(35 @ 10).
			(55 @ 60).
			(55 @ 110).
			(15 @ 160)}
		do: [ :type :position | group addChild: (self makeAlgorithmButton: type position: position) ].
	(group children at: (algorithms findFirst: [ :a | a = algorithm class ])) forceLayout selectButton