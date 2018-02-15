initialization
serversPrint
|serverAsString|
serverAsString := String new.
servers size = 0 ifTrue: [ ^'Neni k dispozici zadny server.' ].
servers do: [ :s | serverAsString := s asString,',',serverAsString ].
^ serverAsString allButLast.