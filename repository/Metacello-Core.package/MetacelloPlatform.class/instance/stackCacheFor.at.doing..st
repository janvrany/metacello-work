"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: caching
"
stackCacheFor: cacheName at: key doing: aBlock

	^self stackCacheFor: cacheName cacheClass: Dictionary at: key doing: aBlock
