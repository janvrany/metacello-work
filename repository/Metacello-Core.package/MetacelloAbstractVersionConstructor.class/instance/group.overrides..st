"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
group: aString overrides: aStringOrCollection

	| spec |
	spec := 
		(self project groupSpec)
			name: aString;
			includes: aStringOrCollection;
			yourself.
	self root packages add: spec.
