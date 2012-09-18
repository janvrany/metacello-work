"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: pragma extraction
"
extractCommonDefaultSymbolicVersionPragmas

	| aDict |
	aDict := Dictionary new.
	self extractPragmas: #defaultSymbolicVersion: for: MetacelloBaseConfiguration into: aDict.
	^aDict