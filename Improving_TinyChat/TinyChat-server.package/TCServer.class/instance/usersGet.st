action
usersGet
|usersAsString|
usersAsString := String new.
users do: [ :u | usersAsString := u nameOfUser, ' - ',u status,'
', usersAsString ].
^ usersAsString.