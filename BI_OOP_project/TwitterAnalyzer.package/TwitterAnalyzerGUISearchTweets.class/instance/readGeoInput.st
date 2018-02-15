as yet unclassified
readGeoInput
	(textInputLatitude text = '') ifTrue: [ ^ nil ].
	(textInputLongitude text = '') ifTrue: [ ^ nil ].	
	
	^ String streamContents: [ :stream |
			stream
				<< textInputLatitude text asString;
				<< ',';
				<< textInputLongitude text asString;
				<< ',';
				<< dropDownRadius selectedItem asString;
				<< 'mi'.
		 ].