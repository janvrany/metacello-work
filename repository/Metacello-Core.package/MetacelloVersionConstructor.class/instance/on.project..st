"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: initialization
"
on: aConfig project: aProject

	| cacheKey cachedProject |
	cacheKey := aConfig class.
	cachedProject := MetacelloPlatform current
		stackCacheFor: #versionConstructor
		at: cacheKey
		doing: [ :cache | 
			self calculate: aConfig project: aProject.
			cache at: cacheKey put:  self project.
			^self ].
	aProject map: cachedProject map.
	aProject symbolicVersionMap: cachedProject symbolicVersionMap.
	aProject configuration: aConfig.
	self setProject: aProject