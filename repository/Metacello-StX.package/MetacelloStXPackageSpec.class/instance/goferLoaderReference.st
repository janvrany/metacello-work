"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
goferLoaderReference

	^file == nil 
		ifTrue: [ GoferPackageReference name: self name ]
		ifFalse: [ 
			"does Monticello-style #versionInfoFromVersionNamed: matching"
			MetacelloGoferPackage name: self name packageFilename: self file ]
