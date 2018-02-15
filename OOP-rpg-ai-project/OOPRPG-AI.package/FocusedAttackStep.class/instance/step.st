stepping and presenter
step
	focused isNil ifTrue: [ focused := self getRandomEnemy] ifFalse: [ focused dead ifTrue: [ focused := self getRandomEnemy]].
	ownedBy attack: focused.