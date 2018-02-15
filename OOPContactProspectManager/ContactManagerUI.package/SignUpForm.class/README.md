Example:
|f|
f := SignUpForm new open.

f whenPressButton: [ :user | Transcript show: 'Create user ', user firstName. f window close. ].