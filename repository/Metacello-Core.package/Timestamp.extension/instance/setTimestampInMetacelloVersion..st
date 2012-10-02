"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: *metacello-core
"
setTimestampInMetacelloVersion: aMetacelloVersionSpec

	aMetacelloVersionSpec setTimestamp: 
		(aMetacelloVersionSpec project valueHolderSpec
			value: self printString;
			yourself)
