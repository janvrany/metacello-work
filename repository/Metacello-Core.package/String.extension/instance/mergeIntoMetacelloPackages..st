"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
mergeIntoMetacelloPackages: aMetacelloPackagesSpec

	| spec |
	spec := 
		(aMetacelloPackagesSpec project packageSpec)
			file: self;
			yourself.
	aMetacelloPackagesSpec addMember: 
		(aMetacelloPackagesSpec mergeMember 
			name: spec name;
			spec: spec;
			yourself)
