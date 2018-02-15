as yet unclassified
updateLines
	| element |
	container := BlElement new
		layout: BlFlowLayout vertical;
		background: Color lightGray;
		size: 300 @ 300.
	space root addChild: container.
	content
		do: [ :each | 
			element := BlTextElement new
				text: (BrRopedText string: each);
				size: 300 @ 20.
			container addChild: element ]