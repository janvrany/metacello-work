"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
attributeOrder

	attributeOrder == nil ifTrue: [ attributeOrder := OrderedCollection new ].
	^attributeOrder