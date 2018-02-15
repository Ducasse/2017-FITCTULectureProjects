gt-inspector-extension
gtInspectorKEffectsIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Active Effects' ];
		display: [ self effects ];
		column: 'Effect' evaluated: [:each|each class asString ];
		column: 'Duration' evaluated: [:each|each timer];
		send: [:each|each yourself]