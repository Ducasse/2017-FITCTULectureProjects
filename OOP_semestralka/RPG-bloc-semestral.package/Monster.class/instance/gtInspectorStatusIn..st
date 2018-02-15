gt-inspector-extension
gtInspectorStatusIn: aComposite
	<gtInspectorPresentationOrder: 2>

	^ aComposite fastTable
		title: 'Status';
		display: [ {
			'Health' -> self healthCurrent.
			'Name' -> self displayName	
		} ];
		column: 'Name' evaluated: [ :each | each key asString ];
		column: 'Value' evaluated: [ :each | each value gtDisplayString ]