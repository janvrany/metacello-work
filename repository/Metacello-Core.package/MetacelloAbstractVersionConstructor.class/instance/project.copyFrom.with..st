"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: api
"
project: aString copyFrom: oldSpecName with: aBlock

	| spec projectSpec |
	projectSpec := 
		(self project projectSpec)
			name: aString;
			projectPackage: self project packageSpec;
			yourself.
	spec := 
		(self project projectReferenceSpec)
			name: aString;
			projectReference: projectSpec;
			yourself.
	self root packages copy: oldSpecName to: spec.
	self with: projectSpec during: aBlock