"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: adding
"
addToMetacelloPackages: aMetacelloPackagesSpec

	| spec |
	spec := (aMetacelloPackagesSpec project projectReferenceSpec)
			name: self name;
			projectReference: self copy;
			yourself.
	aMetacelloPackagesSpec addMember: 
		(aMetacelloPackagesSpec addMember 
			name: spec name;
			spec: spec;
			yourself)
			
