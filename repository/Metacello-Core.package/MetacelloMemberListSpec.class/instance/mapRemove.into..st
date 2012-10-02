"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
mapRemove: aMemberSpec into: map
	
	map removeKey: aMemberSpec name ifAbsent: []
