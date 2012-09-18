"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: pragma extraction
"
extractSymbolicVersionPragmas

	| aDict |
	aDict := Dictionary new.
	self extractPragmas: #symbolicVersion: into: aDict.
	^aDict