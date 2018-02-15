tests
testSTONsave
| listOfGames Mafia MafiaPlatform |
MafiaPlatform  := GamePlatform new.
Mafia  := Game new.
listOfGames := GameList new.

MafiaPlatform platformName: 'PC'.

Mafia  title: 'Mafia I'.
Mafia completed: true.
Mafia description: 'Game developed by czech company'.
Mafia platform: MafiaPlatform.

listOfGames addGame: Mafia.

listOfGames asSTON 