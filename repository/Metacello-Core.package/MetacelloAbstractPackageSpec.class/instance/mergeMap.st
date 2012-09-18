"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeMap

	| map |
	map := super mergeMap.
	map at: #requires put: requires.
	map at: #includes put: includes.
	map at: #answers put: answers.
	^map