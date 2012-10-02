"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: merging
"
mergeSpec: anotherSpec

	| newSpec map anotherProjectReference |
	newSpec := super mergeSpec: anotherSpec.
	map := anotherSpec mergeMap.
	(anotherProjectReference := map at: #projectReference) ~~ nil
		ifTrue: [ 
			newSpec projectReference: 
				(newSpec projectReference == nil
					ifTrue: [ anotherProjectReference ]
					ifFalse: [ newSpec projectReference mergeSpec: anotherProjectReference ])].
	^newSpec
