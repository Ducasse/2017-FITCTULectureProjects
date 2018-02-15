gt-inspector-extension
gtInspectorPreviewIn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	^ aComposite sparta
		title: 'Preview';
		extent: self size;
		draw: [ :aCanvas | self drawOn: aCanvas position: 0@0 ]