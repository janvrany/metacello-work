"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
map
	
	| map |
	memberMap ~~ nil ifTrue: [ ^memberMap ].
	map := Dictionary new.
	self list do: [:member | 
		member
			applyAdd: [:memberSpec | self mapAdd: memberSpec into: map ] 
			copy: [:memberSpec | self mapCopy: memberSpec into: map ]
			merge: [:memberSpec | self mapMerge: memberSpec into: map ] 
			remove: [:memberSpec | self mapRemove: memberSpec into: map ]].
	memberMap := map.
	^memberMap