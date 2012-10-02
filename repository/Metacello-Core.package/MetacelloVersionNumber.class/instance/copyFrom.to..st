"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: copying
"
copyFrom: start to: stop 
	"Answer a copy of a subset of the receiver, starting from element at 
	index start until element at index stop."

	| newSize new j |
	newSize := stop - start + 1.
	new := self species new: newSize.
	j := 0.
	start to: stop do: [:i |
		new at: j + 1 put: (self at: i).
		j := j + 1 ].
	^new
