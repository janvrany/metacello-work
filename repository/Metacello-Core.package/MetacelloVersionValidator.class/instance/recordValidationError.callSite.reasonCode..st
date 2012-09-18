"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
recordValidationError: aString callSite: callSite reasonCode: aSymbol

	^self recordValidationError: aString versionString: nil callSite: callSite reasonCode: aSymbol
