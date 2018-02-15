as yet unclassified
showChampion: aChampion
	| element |
	container := BlElement new 
		layout: BlFlowLayout vertical;
		background: Color gray  ;
		size: 300@600.
	space root addChild: container .
	self showChampionImage: (aChampion imgPath ).
	aChampion printString lines do: [ :each | element := BlTextElement new
												text: (BrRopedText string: each);
												size: 300@20.
												container addChild: (element ).
											 ].