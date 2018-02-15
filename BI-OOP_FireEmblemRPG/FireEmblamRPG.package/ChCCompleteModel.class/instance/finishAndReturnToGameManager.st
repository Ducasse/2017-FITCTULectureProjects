accessing
finishAndReturnToGameManager
	|champList|
	champList := OrderedCollection new.
	1 to: 4 do: [ :i | champList add: (((classLists at: i) createChampion) name: (champNameArray at: i)) ].
	gameManagerModel chCReturn: champList. 