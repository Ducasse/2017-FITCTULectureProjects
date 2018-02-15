instance creation
onGame: aMinerGame fromCamera: aNumber
	^ self basicNew
		model: aMinerGame;
		container: (MGCameraView fromCamera: (aMinerGame currentScene getCamera: aNumber));
		initialize;
		yourself