initialize
create: aTextDatabase monsterDatabase: aMonsterDatabase
	|instance|
    instance := self basicNew.
    instance squareSize: 25.
    instance textDatabase: aTextDatabase.
	 instance monsterDatabase: aMonsterDatabase.
    ^ instance initialize