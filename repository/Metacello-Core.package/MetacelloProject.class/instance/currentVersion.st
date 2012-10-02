"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: versions
"
currentVersion
	| cacheKey cv |
	cacheKey := self configuration class.
	^ MetacelloPlatform current
		stackCacheFor: #currentVersion
		at: cacheKey
		doing: [ :cache | 
			cv := self currentVersionAgainst: nil.
			^ cache at: cacheKey put: cv ]
