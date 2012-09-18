"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
package: aString

	| spec |
	spec := 
		(self project packageSpec)
			name: aString;
			yourself.
	self root packages add: spec.
