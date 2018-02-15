as yet unclassified
createChampionFromButton: aChCButton 
	|champ|
	(aChCButton actionNum = 1) ifTrue: [ champ := Mage new ].
	(aChCButton actionNum = 2) ifTrue: [ champ := Hunter new ].
	(aChCButton actionNum = 3) ifTrue: [ champ := Mage new ].
	(aChCButton actionNum = 4) ifTrue: [ champ := Rogue new ].
	(aChCButton actionNum = 5) ifTrue: [ champ := Swordman new ].
	(aChCButton actionNum = 6) ifTrue: [ champ := Tank new ].
	^champ
	