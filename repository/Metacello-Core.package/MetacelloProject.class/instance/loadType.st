"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
loadType
	"#atomic or #linear"

	loadType == nil ifTrue: [ ^#atomic ].
	^loadType
