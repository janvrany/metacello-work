"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: accessing
"
approximateBase

	| base |
	base := self copyFrom: 1 to: self size - 1.
	base at: base size put: (base at: base size) + 1.
	^base