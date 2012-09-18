"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: enumeration
"
select: aBlock 
	| newCollection |
	newCollection := OrderedCollection new.
	self do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection