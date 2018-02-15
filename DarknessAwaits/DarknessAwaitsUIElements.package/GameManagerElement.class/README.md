Gamemanager element handles the structure of playground. Servers as conteiner of all elements on playground

In initialize step it sets spacing and columnCount of self and sets restrictions of content overlaying

methods:
addChilds
	adds all parts of playground as it's childs.
gameManger
	getter of game manager
gameManager:
	setter of game manager
initializeBattleField
	creates new battlefield element and sets its 	gamemanager
initializePlayground
	initialize all parts of playground, adds them as 	childs and shows playground in window