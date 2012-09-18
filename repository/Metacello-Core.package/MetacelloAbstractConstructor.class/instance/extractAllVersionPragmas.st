"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: pragma extraction
"
extractAllVersionPragmas

	| aDict |
	aDict := Dictionary new.
	self extractPragmas: #version: into: aDict.
	self extractPragmas: #version:imports: into: aDict.
	^aDict