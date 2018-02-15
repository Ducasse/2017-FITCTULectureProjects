JsonParser uses singleton pattern, because we do not need more than one parser in our game.

methods:
parseDictionaryFrom:converToType
	takes path and ClassType as arguments. Parses 	data from path and trying to map them to 	dictionary of ClassType given in argument
parseObjectFrom:converToType
	takes path and ClassType as arguments. Parses 	data from path and trying to map them to single 	ClassObject given in argument