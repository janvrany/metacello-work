"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
versionString: aStringOrSymbol

	aStringOrSymbol isSymbol ifFalse: [ self error: 'Version symbol ', aStringOrSymbol printString, ' for symbolic version method must be a Symbol' ].
	super versionString: aStringOrSymbol