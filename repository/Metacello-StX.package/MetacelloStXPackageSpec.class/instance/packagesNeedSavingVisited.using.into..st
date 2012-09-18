"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: development support
"
packagesNeedSavingVisited: visitedProjects using: repos into: aCollection

	^self loader packagesNeedSavingUsing: repos into: aCollection
