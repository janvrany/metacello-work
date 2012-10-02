"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
versionString: aStringOrSymbol

	aStringOrSymbol isSymbol ifTrue: [ self error: 'Version string ', aStringOrSymbol printString, ' for version method must be a String' ].
	super versionString: aStringOrSymbol
