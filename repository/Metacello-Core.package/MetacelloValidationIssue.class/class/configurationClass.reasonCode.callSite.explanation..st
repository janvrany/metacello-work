"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: instance creation
"
configurationClass: aClass reasonCode: aSymbol callSite: aCallSite explanation: aString

	^(self new)
		configurationClass: aClass;
		reasonCode: aSymbol;
		callSite: aCallSite;
		explanation: aString;
		yourself
