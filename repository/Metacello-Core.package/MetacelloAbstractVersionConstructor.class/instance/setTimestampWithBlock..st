"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setTimestampWithBlock: aBlock

	| spec |
	(spec := self root getTimestamp) == nil
		ifTrue: [ 
			spec := self project valueHolderSpec.
			self root setTimestamp: spec ].
	self with: spec during: aBlock