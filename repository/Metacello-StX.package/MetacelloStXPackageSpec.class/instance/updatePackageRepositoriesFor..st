"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
updatePackageRepositoriesFor: aVersionSpec
	"Don't update the repository unless the package is loaded in the image"
	
	self workingCopy == nil ifTrue: [ ^self ].
	self updatePackageRepositories: self repositorySpecs, aVersionSpec repositorySpecs.	
