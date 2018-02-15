checking
checkEmptyInput
	|ret |
	ret:= ((((titleTextField text trim isEmpty) or: (genreTextField text trim isEmpty)) or:
	((yearTextField text trim isEmpty) or: (writerTextField text trim isEmpty))) or:
	((publisherTextField text trim isEmpty) or: (countTextField text trim isEmpty))).
	^ret not.