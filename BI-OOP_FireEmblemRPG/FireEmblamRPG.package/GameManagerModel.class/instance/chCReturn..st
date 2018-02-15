as yet unclassified
chCReturn: aChampList
	self assert: (aChampList class) equals: OrderedCollection.
	
	"set team for each champ"
	chCMenuModel2 ifNil: [ aChampList do: [ :ch | ch team: 1].  ] ifNotNil: [ aChampList do: [ :ch | ch team: 2].  ].
	"aChampList do: [ :ch | ch team: 1]."
	
	"add recieved champions to list"
	champList addAll: aChampList.
	
	"notify show of next screen, depend on situation"
	chCMenuModel2 ifNil: [ self notifyTeam2ChCShow. ] ifNotNil: [ self notifyLevelShow. ].
	