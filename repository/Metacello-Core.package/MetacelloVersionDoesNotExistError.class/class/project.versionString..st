"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
project: aMetacelloProject versionString: aVersionString

	^(self new)
		project: aMetacelloProject;
		versionString: aVersionString;
		yourself
