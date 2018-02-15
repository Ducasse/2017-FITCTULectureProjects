as yet unclassified
select: aChCButton
	primaryButtons do: [ :b | b = aChCButton ifTrue: [b selected: true] ifFalse: [b selected: false] ]. 