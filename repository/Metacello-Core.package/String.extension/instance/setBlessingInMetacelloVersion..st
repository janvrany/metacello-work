"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
setBlessingInMetacelloVersion: aMetacelloVersionSpec

	aMetacelloVersionSpec setBlessing: 
		(aMetacelloVersionSpec project valueHolderSpec
			value: self;
			yourself)