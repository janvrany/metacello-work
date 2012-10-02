"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodCascadeOn: aStream member: aMember last: lastCascade indent: indent

	aMember methodUpdateSelector == #remove:
		ifTrue: [ aStream nextPutAll: 'removeGroup: ', self name printString. ]
		ifFalse: [
			aStream 
				nextPutAll: 'group: ', self name printString;
				space; 
				nextPutAll: aMember methodUpdateSelector asString, ' #('.
			self includes do: [:str | aStream nextPutAll: str printString, ' ' ].
			aStream nextPut: $) ].
	lastCascade
		ifTrue: [ aStream nextPut: $. ]
		ifFalse: [ aStream nextPut: $;; cr ].
