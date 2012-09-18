"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: method generation
"
methodSelectorAndPragma: aSelector imports: importList versionString: aString on: strm
	strm
		nextPutAll: aSelector asString , ' spec';
		cr;
		tab;
		nextPutAll: '<version: ' , aString printString.
	importList notEmpty
		ifTrue: [ 
			strm nextPutAll: ' imports: #('.
			importList
				do: [ :importVersionString | 
					strm
						nextPutAll: importVersionString printString;
						space ].
			strm nextPut: $) ].
	strm
		nextPutAll: '>';
		cr