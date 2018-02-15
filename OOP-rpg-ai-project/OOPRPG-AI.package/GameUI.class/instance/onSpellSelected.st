as yet unclassified
onSpellSelected
	| spellList |
	ListModel allInstances do: [ :list | list delete ].
	spellList := ListModel new.
	spellList
		items: self class spells;
		whenSelectedItemChanged: [ :spell | 
			spell ifNotNil: [ self onSpellChosen: spell ].
			spellList delete ];
		displayBlock: [ :spell | spell title , ' (' , spell manacost asString , ' MP)' ];
		title: 'Choose magic spell'.
	spellList openWithSpec