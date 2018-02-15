gt-inspector-extension
gtInspectorMapIn: composite
	<gtInspectorPresentationOrder: 1>

	^ composite bloc 
		title: 'Map';
		element: [ :aBlocPresentation | BlZoomableElement new
			addEventHandler: BlDragHandler new;
			constraintsDo: [ :c |
				c horizontal matchParent.
				c vertical matchParent ];
			contentElement: (self gtInspectorAsElement
					childrenDo: [ :aChild | aChild
						when: BlClickEvent
						do: [ :anEvent | aBlocPresentation selection: (anEvent currentTarget userData at: #minerBlockHolder) ]];
					yourself);
				yourself ];
		act: [ :aBlocPresentation | aBlocPresentation element zoomIn ]
			icon: GLMUIThemeExtraIcons glamorousZoomIn
			entitled: 'Zoom in';
		act: [ :aBlocPresentation | aBlocPresentation element zoomOut ]
			icon: GLMUIThemeExtraIcons glamorousZoomOut
			entitled: 'Zoom out';
		act: [ :aBlocPresentation |
				aBlocPresentation element zoomReset.
				aBlocPresentation element relocate: 0@0 ]
			icon: GLMUIThemeExtraIcons glamorousZoomToFit
			entitled: 'Zoom reset'