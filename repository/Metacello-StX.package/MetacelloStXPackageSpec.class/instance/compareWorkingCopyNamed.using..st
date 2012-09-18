"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: testing
"
compareWorkingCopyNamed: wcName using: comarisonOperator
	| fileRef wcRef |
	fileRef := GoferResolvedReference name: self file.
	wcRef := GoferResolvedReference name: wcName.
	^ wcRef compare: fileRef using: comarisonOperator
