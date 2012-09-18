"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
projectPackage: aBlock

	| spec |
	(spec := self root projectPackage) == nil
		ifTrue: [ 
			spec := self project packageSpec.
			self root projectPackage: spec ].
	self with: spec during: aBlock