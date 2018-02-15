GT-InspectorExtensions-Core
gtInspectorContactIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: 'Contact';
		display: [ (self property keys) collect: [ :key | (key asString) -> (self property: key). ]. ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: [ :each | each value printString ];
		send: #value