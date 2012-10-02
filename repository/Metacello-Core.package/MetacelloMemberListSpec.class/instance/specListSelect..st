"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: enumeration
"
specListSelect: aBlock 
	| newCollection |
	newCollection := OrderedCollection new.
	self specListDo: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection
