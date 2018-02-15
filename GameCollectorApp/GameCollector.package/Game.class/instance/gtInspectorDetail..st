GT-Inspector
gtInspectorDetail: composite
	<gtInspectorPresentationOrder: 1>
	^ composite table
		title: [  'Details' ];
		display: [ {
			'Name' -> self name.
			'Platform' -> self platform. 
			'Price' -> self price.
			'State' -> self state.
			'Summary' -> self summary.
			'Rating' -> self rating.
			'Release date' -> self release.
			'IGDB Id' -> self igdbid.
			'Thumbnail URL' -> self iconUrl.
			'Custom attributes' -> self customAttributes.
			 } ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value