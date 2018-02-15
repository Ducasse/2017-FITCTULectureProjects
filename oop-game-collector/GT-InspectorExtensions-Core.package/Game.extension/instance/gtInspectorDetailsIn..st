*GT-InspectorExtensions-Core
gtInspectorDetailsIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Details' ];
		display: [ 
					{'Title' -> self title.
					'Rating' -> self rating.
					'Release year' -> self releaseYear.
					'Description' -> self description.
					'Completed' -> self completed.
					'Price' -> self price.
					'Platform' -> self platform asString.
					'Genre' -> self genre asString.
					'State' -> self state asString.
					'Poster url' -> self posterUrl } ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value.