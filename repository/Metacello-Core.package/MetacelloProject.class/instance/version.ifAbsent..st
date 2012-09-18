"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: versions
"
version: aVersionString ifAbsent: aBlock

	^[ self version: aVersionString ] on: MetacelloVersionDoesNotExistError do: [:ex | aBlock value ].