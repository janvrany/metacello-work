"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: printing
"
configMethodOn: aStream for: spec selector: selector last: last indent: indent
	spec == nil
		ifTrue: [ ^ self ].
	aStream
		tab: indent;
		nextPutAll: 'spec ' , selector , ' [';
		cr.
	spec configMethodOn: aStream indent: indent + 1.
	aStream nextPutAll: ' ].'.
	last
		ifFalse: [ aStream cr ]
