Example:
|f|
f := AddContact new.
f whenSelectedUser: [ :user | Transcript show: 'Add contact ', user firstName. f window close. ].
f openWithSpec.