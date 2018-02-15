gt-inspector-extension
gtInspectorAsElement
	^ BlElement new
		layout: (BlGridLayout horizontal columnCount: self width);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		addChildren: (self blocks asArray collect: [ :aMiBlockHolder |
			aMiBlockHolder gtInspectorAsElement
				when: BlMouseEnterEvent do: [ :anEvent | anEvent currentTarget border: (BlBorder paint: Color blue width: 5) ];
				when: BlMouseLeaveEvent do: [ :anEvent | anEvent currentTarget border: (BlBorder empty) ];
				yourself ]);
		yourself