instance creation
runWidth: width height: height obsticlePercentage: percentage
|player|
player:=Player createWithName: 'Player1' GameBoard: '' Race: 'Human'.
^ self openModel: (player gameBoard: (GameBoard createWithWidth: width andHeight: height ObsticalChance: percentage Player: player)).
