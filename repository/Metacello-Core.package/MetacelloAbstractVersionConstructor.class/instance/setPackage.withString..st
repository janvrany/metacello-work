"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setPackage: aString withString: aFile

	| spec |
	spec := 
		(self project packageSpec)
			name: aString;
			file: aFile;
			yourself.
	self root packages merge: spec.
