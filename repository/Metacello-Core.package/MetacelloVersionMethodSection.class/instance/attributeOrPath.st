"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
attributeOrPath
	| path |
	^self parent == nil
		ifTrue: [ self attribute ]
		ifFalse: [ self parent attributePath , {(self attribute)} ]
