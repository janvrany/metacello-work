"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodOn: aStream for: aValue selector: selector cascading: cascading cascade: cascade indent: indent

	| valuePrintString |
	aValue == nil ifTrue: [ ^self ].
	cascading ifTrue: [ aStream cr; tab: indent ].
	valuePrintString := aValue value isSymbol
		ifTrue: [ '#' , aValue value asString printString ]
		ifFalse: [ aValue value printString ].
	aStream  nextPutAll: selector, valuePrintString.
	cascade ifTrue: [ aStream nextPut: $; ]
