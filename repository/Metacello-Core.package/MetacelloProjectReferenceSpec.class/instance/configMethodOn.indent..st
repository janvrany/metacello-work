"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodOn: aStream indent: indent

	aStream 
		tab: indent; nextPutAll: 'spec '; cr;
		tab: indent + 1; nextPutAll: 'name: ', self name printString; nextPut: $;; cr;
		tab: indent + 1; nextPutAll: 'projectReference: '; nextPut: $[; cr.
	aStream 
		tab: indent + 2; nextPutAll: 'spec'.
	self projectReference ifNotNil: [ self projectReference configMethodBodyOn: aStream indent: indent + 2].
	aStream nextPutAll: ' ].'