gt-inspector-extension
gtInspectorAsElement
	| aCell |
	
	aCell := self block gtInspectorAsElement
		in: [ :anElement | anElement userData at: #minerBlockHolder put: self ];
		yourself.
	self when: MiBlockChangedAnnouncement do: [
		| aTexture |
		aTexture := MiTextureVisitor getInstance getTextureOf: self block.
		aCell
			size: aTexture extent;
			background: (BlBackground image: aTexture) ].
	^ aCell