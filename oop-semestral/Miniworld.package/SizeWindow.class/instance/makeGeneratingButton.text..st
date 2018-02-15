factory
makeGeneratingButton: aGenerator text: aText
	^ (BlButtonFactory materialWithText: aText)
		addOnClick: [ :e | 
			miniworld grid: (RandomGrid ofSize: dimensions by: dimensions with: aGenerator).
			self close ]