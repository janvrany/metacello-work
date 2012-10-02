"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: removing
"
removeFromMetacelloPackages: aMetacelloPackagesSpec

	aMetacelloPackagesSpec addMember: 
		(aMetacelloPackagesSpec removeMember 
			name: self name;
			spec: self;
			yourself)
