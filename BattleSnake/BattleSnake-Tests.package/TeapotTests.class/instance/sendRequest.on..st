tests
sendRequest: jsonData on: url
	^ ZnClient new
		timeout: 3;
		url: url;
		accept: ZnMimeType applicationJson;
		contentReader: [ :entity | NeoJSONReader fromString: entity contents ];
		contentWriter: [ :data | ZnEntity with: (NeoJSONWriter toString: data) type: ZnMimeType applicationJson ];
		contents: jsonData;
		post