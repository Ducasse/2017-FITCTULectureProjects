action
removeUserByName: aUserName
|toBeRemoved|
toBeRemoved := nil.
users do: [:u | u nameOfUser = aUserName ifTrue: [toBeRemoved := u]. ].
toBeRemoved = nil ifFalse: [users remove: toBeRemoved].