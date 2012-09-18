"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeMap

	| map |
	map := super mergeMap.
	map at: #versionString put: versionString.
	map at: #blessing put: blessing.
	map at: #description put: description.
	map at: #author put: author.
	map at: #timestamp put: timestamp.
	map at: #preLoadDoIt put: preLoadDoIt.
	map at: #postLoadDoIt put: postLoadDoIt.
	^map