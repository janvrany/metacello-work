"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
compareEqualTo: aMetacelloVersionNumber

	| mySize |
	aMetacelloVersionNumber species = self species ifFalse: [ ^false ].
	mySize := self size.
	mySize = aMetacelloVersionNumber size 
		ifFalse: [ ^false ].
	1 to: mySize do: [:i |
		(self at: i) = (aMetacelloVersionNumber at: i) ifFalse: [ ^false ]].
	^true