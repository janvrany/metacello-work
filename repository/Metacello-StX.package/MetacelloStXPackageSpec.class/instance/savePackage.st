"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
savePackage
	"Interactive save ... prompted for commit message and package name unless MCVersionNameAndMessageRequest handled"

	| latestFile pkgSpec |
	^(file notNil and: [ self name = self file ])
		ifTrue: [
			latestFile := self loader latestPackage: self name fromRepository: self repositorySpecs.
			pkgSpec := self copy.
			pkgSpec file: latestFile.
			pkgSpec savePackage ]
		ifFalse: [ self loader savePackageUsing: self repositorySpecs ]
