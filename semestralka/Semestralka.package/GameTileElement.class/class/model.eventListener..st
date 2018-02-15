instance creation
model: aModel eventListener: aListener
	^ self new
		model: aModel;
		addEventHandler: aListener;
		yourself