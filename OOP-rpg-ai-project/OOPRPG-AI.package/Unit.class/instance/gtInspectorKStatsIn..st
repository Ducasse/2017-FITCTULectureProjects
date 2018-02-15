gt-inspector-extension
gtInspectorKStatsIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Stats' ];
		display: [ 
					{'Hitpoints' -> self atk.
					'Mana Points' -> self mp .
					'Attack' -> self atk  .
					'Defense' -> self def .
					'Speed' -> self spd .
					'Magic Power' -> self mpwr .
					} ];
		column: 'Stat' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value