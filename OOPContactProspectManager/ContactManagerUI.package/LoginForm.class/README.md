Login form.

Example:
|f|
f := LoginForm new open.

f myAnnouncer when: LogInAnnouncement do: [ 
	:item | Transcript show: 'Log in contact ', item login,' ', item password; cr ].

f loginWarning.