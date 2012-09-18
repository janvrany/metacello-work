"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: testing
"
compareCurrentVersion: anOperator targetVersionStatus: statusIgnored using: anMCLoader

	self 
		currentPackageLoaded: [:bool | ^bool ] 
		comparing: anOperator 
		notLoaded: [:ignored | ^false ]
		using: anMCLoader
