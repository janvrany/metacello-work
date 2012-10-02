"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: validation
"
validateDoItSelector: anObject

	anObject == nil ifTrue: [ ^ self ].
	anObject isSymbol ifFalse: [ self error: 'Invalid message selector for doit: ', anObject printString ].
