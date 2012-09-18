"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
packageNamed: aString ifAbsent: aBlock

	^self map at: aString ifAbsent: aBlock