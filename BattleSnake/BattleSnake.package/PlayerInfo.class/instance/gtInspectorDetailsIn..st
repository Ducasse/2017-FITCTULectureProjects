gt-inspector-extension
gtInspectorDetailsIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Details' ];
		display: [ {
			'name' -> self name.
			'taunt' -> self taunt.
			'color' -> (self colorAsMorph: (self color)).
			'secondary color' -> (self colorAsMorph: (self secondaryColor)).
			'player icon' -> self headUrlAsMorph .
			'snake head' -> self headTypeAsMorph .
			'snake tail' -> self tailTypeAsMorph  .
			} ];
		column: 'Key' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value