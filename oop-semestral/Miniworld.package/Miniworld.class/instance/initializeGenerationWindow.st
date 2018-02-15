initialization
initializeGenerationWindow
	|size makeSizeSettingButton makeGeneratingButton window|
	
	size := 10.
	
	makeSizeSettingButton := [ :number |
		(BlButtonFactory materialWithText: number asString)  addOnClick: [ :e | size:= number ]].
	
	window := BlSpace new.
	
	makeGeneratingButton := [ :text :generator |
		(BlButtonFactory materialWithText: text)
			addOnClick: [ :e | 
				self grid: (RandomGrid ofSize: size by: size with: generator).
				algorithm tilemap: grid.
				self reset.
				window close. ]].
	
	window 
		windowExtent: 240 @ 110;
		title: 'Random map'.
	window root background: (Color r: 0.13 g: 0.13 b: 0.13).
	window root
		addChild: ((BlTextElement text: ('SIZE:' asRopedText attributes: {BrTextForegroundAttribute paint: Color white})) relocate: 10 @ 17);
		addChild: ((makeSizeSettingButton value: 5) relocate: 50 @ 10);
		addChild: ((makeSizeSettingButton value: 10) relocate: 105 @ 10);
		addChild: ((makeSizeSettingButton value: 20) relocate: 165 @ 10);
		addChild: ((makeGeneratingButton cull: 'PerlinNoise' cull: NoiseGridGeneration) relocate: 10 @ 60);
		addChild: ((makeGeneratingButton cull: 'trivial' cull: TrivialGridGeneration) relocate: 145 @ 60).
	^window