"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setBlessingWithBlock: aBlock

	| spec |
	(spec := self root getBlessing) == nil
		ifTrue: [ 
			spec := self project valueHolderSpec.
			self root setBlessing: spec ].
	self with: spec during: aBlock
