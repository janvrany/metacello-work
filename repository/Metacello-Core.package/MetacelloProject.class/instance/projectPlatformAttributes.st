"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
projectPlatformAttributes

	| list aBlock |
	list := OrderedCollection new.
	(aBlock := self projectAttributes) ~~ nil 
		ifTrue: [ list addAll: aBlock value ].
	^self defaultPlatformAttributes, list
