gt-inspector-extension
gtInspectorPreviewIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	^ aComposite sparta
		title: 'Preview';
		extent: self size;
		draw: [ :aCanvas |
			aCanvas transform during: [ :aTransform |
				aTransform translateBy: self drawPosition negated.
				aTransform apply.
				
				self drawOnSpartaCanvas: aCanvas ] ]