serialization
gameListFromJson: aJson
	^ (NeoJSONReader fromString: aJson) collect: [ :each | each at: #id ].
