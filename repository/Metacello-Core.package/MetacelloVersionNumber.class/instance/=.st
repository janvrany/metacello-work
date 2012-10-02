"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: comparing
"
= aMetacelloVersionNumber

	| condensed aCondensed |
	aMetacelloVersionNumber species = self species
		ifFalse: [ ^ false ].
	condensed := self collapseZeros.
	aCondensed := aMetacelloVersionNumber collapseZeros.
	(condensed ~~ self or: [ aCondensed ~~ aMetacelloVersionNumber ])
		ifTrue: [ ^ condensed compareEqualTo: aCondensed ].
	^ self compareEqualTo: aMetacelloVersionNumber
