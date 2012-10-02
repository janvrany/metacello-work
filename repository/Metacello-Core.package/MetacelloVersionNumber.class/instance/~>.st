"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: comparing
"
~> aMetacelloVersionNumber

	aMetacelloVersionNumber size == 1 ifTrue: [ ^false ].
	^self >= aMetacelloVersionNumber and: [ self < aMetacelloVersionNumber approximateBase ]
