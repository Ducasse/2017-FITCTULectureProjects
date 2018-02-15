action
usersGetOnlyNames
|usersAsString|
usersAsString := String new.
users do: [ :u | usersAsString := u nameOfUser,'
', usersAsString ].
^ usersAsString.