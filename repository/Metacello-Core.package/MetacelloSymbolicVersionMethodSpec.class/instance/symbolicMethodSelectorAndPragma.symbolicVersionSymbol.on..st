"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: method generation
"
symbolicMethodSelectorAndPragma: aSelector symbolicVersionSymbol: symbolicVersionSymbol on: strm
	strm
		nextPutAll: aSelector asString , ' spec';
		cr;
		tab;
		nextPutAll: '<symbolicVersion: #' , symbolicVersionSymbol asString printString;
		nextPutAll: '>';
		cr
