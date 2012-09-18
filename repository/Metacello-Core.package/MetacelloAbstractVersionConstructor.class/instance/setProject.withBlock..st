"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api callbacks
"
setProject: aString withBlock: aBlock

	| spec projectSpec |
	projectSpec := 
		(self project projectSpec)
			name: aString;
			projectPackage: self project packageSpec;
			yourself.
	projectSpec projectPackage: self project packageSpec.
	spec := 
		(self project projectReferenceSpec)
			name: aString;
			projectReference: projectSpec;
			yourself.
	self root packages merge: spec.
	self with: projectSpec during: aBlock