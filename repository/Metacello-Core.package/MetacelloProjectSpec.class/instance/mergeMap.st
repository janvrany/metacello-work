"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeMap

	| map |
	map := super mergeMap.
	map at: #name put: name.
	map at: #className put: className.
	map at: #versionString put: versionString.
	map at: #operator put: operator.
	map at: #loads put: loads.
	map at: #preLoadDoIt put: preLoadDoIt.
	map at: #postLoadDoIt put: postLoadDoIt.
	^map
