"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setDescriptionWithBlock: aBlock

	| spec |
	(spec := self root getDescription) == nil
		ifTrue: [ 
			spec := self project valueHolderSpec.
			self root setDescription: spec ].
	self with: spec during: aBlock