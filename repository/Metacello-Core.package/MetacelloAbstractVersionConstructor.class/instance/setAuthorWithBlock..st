"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setAuthorWithBlock: aBlock

	| spec |
	(spec := self root getAuthor) == nil
		ifTrue: [ 
			spec := self project valueHolderSpec.
			self root setAuthor: spec ].
	self with: spec during: aBlock