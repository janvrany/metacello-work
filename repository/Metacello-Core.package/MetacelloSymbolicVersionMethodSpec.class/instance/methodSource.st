"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: method generation
"
methodSource
	| strm |
	strm := WriteStream on: String new.
	self symbolicMethodSelectorAndPragma: self selector symbolicVersionSymbol: self versionString on: strm.
	(self methodSections asArray sort: [ :a :b | a attribute <= b attribute ])
		do: [ :methodSection | 
			| vs |
			strm
				cr;
				tab;
				nextPutAll: 'spec for: #' , methodSection attribute asString printString , ' version: '.
			vs := methodSection versionString.
			vs isSymbol
				ifTrue: [ strm nextPut: $# ].
			strm
				nextPutAll: vs asString printString , '.';
				cr ].
	^ strm contents
