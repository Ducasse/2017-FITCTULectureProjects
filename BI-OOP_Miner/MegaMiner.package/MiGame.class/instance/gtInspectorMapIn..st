gt-inspector-extension
gtInspectorMapIn: composite
	<gtInspectorPresentationOrder: 1>	
	
	^ composite bloc 
		title: 'Map';
		element: [ :aBlocPresentation |
			| aMapElement aMinerElement aContainerElement |

			aMapElement := self map gtInspectorAsElement
				childrenDo: [ :aChild | aChild
					when: BlClickEvent
					do: [ :anEvent | aBlocPresentation selection: (anEvent currentTarget userData at: #minerBlockHolder) ]];
				yourself.

			aMinerElement := MiMinerElement new model: self miner.
			aMinerElement wantsMouse: false.
			aMinerElement constraintsDo: [ :c | c ignoreByLayout ].
			aMinerElement moveTo: self miner position.
			self miner when: MiMinerMovedAnnouncement do: [ aMinerElement relocate: (self miner position - 1 asPoint) * aMinerElement size ].

			aContainerElement := BlElement new.
			aContainerElement layout: BlFrameLayout new.
			aContainerElement constraintsDo: [ :c |
				c horizontal fitContent.
				c vertical fitContent ].
			aContainerElement addChildren: { aMapElement . aMinerElement }.
			
			BlZoomableElement new
				addEventHandler: BlDragHandler new;
				constraintsDo: [ :c |
					c horizontal matchParent.
					c vertical matchParent ];
				contentElement: aContainerElement;
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
			entitled: 'Zoom reset';
		act: [ :pres | self performMove: MiDirectionLeft new ]
			icon: #back asIcon
			entitled: 'Move left';
		act: [ :pres | self performMove: MiDirectionDown new ]
			icon: #down asIcon
			entitled: 'Move down';
		act: [ :pres | self performMove: MiDirectionUp new]
			icon: #up asIcon
			entitled: 'Move up';
		act: [ :pres | self performMove: MiDirectionRight new ]
			icon: #forward asIcon
			entitled: 'Move right'