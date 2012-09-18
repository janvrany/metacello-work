"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: versions
"
lastVersion

	| coll |
	coll := (self map values asArray sort: [:a :b | a <= b ]) asOrderedCollection.
	coll isEmpty ifTrue: [ ^nil ].
	^coll last