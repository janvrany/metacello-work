"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
methodSections

	methodSections == nil ifTrue: [ methodSections := OrderedCollection new ].
	^ methodSections