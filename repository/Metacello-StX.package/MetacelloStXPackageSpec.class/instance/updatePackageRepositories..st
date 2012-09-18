"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
updatePackageRepositories: repositorySpecs

	| resolvedPackageRef |
	Transcript cr; show: '  Looking up version -> ', self file.
	resolvedPackageRef := self loader resolveSpec: self from: repositorySpecs.
	Transcript cr; show: 'Update repositoryGroup -> ', resolvedPackageRef name, ' ' , resolvedPackageRef repository description.
	resolvedPackageRef version workingCopy repositoryGroup addRepository: resolvedPackageRef repository
