gt-inspector-extension
gtInspectorAsElement
	| aTexture aCell |
	
	aTexture := MiTextureVisitor getInstance getTextureOf: self.
	aCell := BlElement new
		size: aTexture extent;
		background: (BlBackground image: aTexture);
		yourself.
	^ aCell