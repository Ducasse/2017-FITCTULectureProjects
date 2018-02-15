checking
checkEmptyInput
	|ret |
	ret:= ((firstNameTextField text trim isEmpty) or: (lastNameTextField text trim isEmpty)) or:
	((nationalityTextField text trim isEmpty) or: (birthYearTextField text trim isEmpty)).
	^ret not.