"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: enumeration
"
collect: aBlock 
	| newCollection |
	newCollection :=OrderedCollection new.
	self do: [:each | newCollection add: (aBlock value: each)].
	^ newCollection