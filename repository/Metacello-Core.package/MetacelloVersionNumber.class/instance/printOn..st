"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
printOn: aStream

	| beforeFirst | 
	beforeFirst := true.
	self do:
		[:each |
		beforeFirst
			ifTrue: [beforeFirst := false]
			ifFalse: [
				each isString
					ifTrue: [ aStream nextPut: $- ]
					ifFalse: [ aStream nextPut: $. ] ].
		aStream nextPutAll: each asString ]
