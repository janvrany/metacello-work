"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: signaling
"
signal: anArray
	"Signal the occurrence of an exceptional condition with a specified cacheName."

	self cacheNames: anArray.
	^ self signal