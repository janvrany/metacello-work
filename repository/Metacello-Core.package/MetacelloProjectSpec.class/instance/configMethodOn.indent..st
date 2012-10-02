"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodOn: aStream indent: indent

	aStream 
		tab: indent;
		nextPutAll: 'spec '; cr;
		tab: indent + 1;
		nextPutAll: 'name: ', self name printString, ';'.
	self configMethodBodyOn: aStream indent: indent.
	aStream nextPut: $.
