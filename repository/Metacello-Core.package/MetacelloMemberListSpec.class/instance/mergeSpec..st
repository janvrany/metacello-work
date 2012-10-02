"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeSpec: anotherSpec

	| newSpec val |
	newSpec := super mergeSpec: anotherSpec.
	newSpec list: self list copy.
	anotherSpec list do: [:groupMember | groupMember applyToList: newSpec ].
	^newSpec
