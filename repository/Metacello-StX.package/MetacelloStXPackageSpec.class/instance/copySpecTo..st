"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
copySpecTo: aRepositorySpec
	"Copy current mcz file to the repository named in aRepositorySpec"

	self loader copySpec: self from: self repositorySpecs to: aRepositorySpec createRepository
