"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
symbolicVersionResolverBlock
	^ [ :symbolicVrsn :pragma | 
	| result |
	result := nil.
	(pragma argumentAt: 1) = symbolicVrsn
		ifTrue: [ 
			self symbolicVersion: symbolicVrsn.
			self evaluatePragma: pragma.
			self project attributes
				do: [ :attribute | 
					| versionString |
					versionString := self attributeMap at: attribute ifAbsent: [  ].
					versionString ~~ nil
						ifTrue: [ result := versionString ] ] ].
	result ]