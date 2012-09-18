"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: caching
"
stackCacheFor: cacheName cacheClass: cacheClass at: key doing: aBlock

	self 
		useStackCacheDuring: [:dict | | cache |
			cache := dict at: cacheName ifAbsent: [].
			cache ~~ nil
				ifTrue: [ | value hasEntry |
					hasEntry := true.
					value := cache at: key ifAbsent: [ hasEntry := false ].
					hasEntry ifTrue: [ ^value ]]
				ifFalse: [ 
					cache := cacheClass new.
					dict at: cacheName put: cache ].
			^aBlock value: cache ] 
		defaultDictionary: nil