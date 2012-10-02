"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
loadListForVersion: vrsn 

	^ (self loads == nil
			or: [self loads isEmpty])
		ifTrue: [vrsn spec defaultPackageNames]
		ifFalse: [self loads]
