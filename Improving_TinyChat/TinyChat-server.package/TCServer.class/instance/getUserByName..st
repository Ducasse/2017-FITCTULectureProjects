action
getUserByName: aUserName
|toBeFound|
toBeFound := nil.
users do: [:u | u nameOfUser = aUserName ifTrue: [toBeFound := u]. ].
^toBeFound.