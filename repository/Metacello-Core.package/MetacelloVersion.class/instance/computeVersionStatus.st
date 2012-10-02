"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
computeVersionStatus
	"
		#allLoadedToSpec - all projects and packages are loaded and match specification
		#loadedToSpec - all loaded projects and packages match specifications (at least one package loaded)
		#loadedMatchConstraints - all loaded projects and packages match constraints (at least one package loaded)
		#somethingLoaded - at least one package loaded
	"

	self spec computeVersionStatus: [ :status | ^ status ].
	^ #noStatus
