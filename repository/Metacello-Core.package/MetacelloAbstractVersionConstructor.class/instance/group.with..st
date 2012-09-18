"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
group: aString with: aStringOrCollection

	| spec |
	spec := 
		(self project groupSpec)
			name: aString;
			includes: aStringOrCollection;
			yourself.
	self root packages merge: spec.
