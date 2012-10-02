"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
attributePath
	| path |
	path := {self attribute.}.
	^self parent == nil
		ifTrue: [ path ]
		ifFalse: [ self parent attributePath , path ]
