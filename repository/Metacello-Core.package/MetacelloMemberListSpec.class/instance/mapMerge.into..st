"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
mapMerge: aMemberSpec into: map
	| spec |
	spec :=  map at: aMemberSpec name ifAbsent: [].
	spec == nil
		ifTrue: [ map at: aMemberSpec name put: aMemberSpec spec copy ]
		ifFalse: [ map at: aMemberSpec name put: (spec mergeSpec: aMemberSpec spec)]
