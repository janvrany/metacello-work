"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: loading
"
fetchUsing: mcLoader

	| fetchingSpecLoader |
	fetchingSpecLoader := mcLoader fetchingSpecLoader.
	fetchingSpecLoader
		linearLoadPackageSpecs: (Array with: self) 
		repositories: (fetchingSpecLoader repositoriesFrom: self repositorySpecs).
