"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
specResolverBlock
	^ [ :versionSpec :pragma | 
	(pragma argumentAt: 1) = versionSpec versionString
		ifTrue: [ 
			self evaluatePragma: pragma.
			self project attributes
				do: [ :attribute | 
					| blockList |
					(blockList := self attributeMap at: attribute ifAbsent: [  ]) ~~ nil
						ifTrue: [ blockList do: [ :block | self with: versionSpec during: block ] ] ] ] ]