"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodOn: aStream indent: indent

	aStream nextPutAll: self class name asString, ' member: ('.
	self spec configMethodOn: aStream indent: indent.
	aStream nextPutAll: ')'.
