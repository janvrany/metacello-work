"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeSpec: anotherSpec

	| newSpec map anotherPackages anotherRepositories |
	newSpec := super mergeSpec: anotherSpec.
	map := anotherSpec mergeMap.
	(anotherRepositories := map at: #repositories) notEmpty
		ifTrue: [ 
			newSpec 
				repositories: (self repositories isEmpty
					ifTrue: [ anotherRepositories ]
					ifFalse: [ self repositories mergeSpec: anotherRepositories ]) ].
	^newSpec
