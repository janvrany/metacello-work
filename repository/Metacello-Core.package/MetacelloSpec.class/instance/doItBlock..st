"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: doits
"
doItBlock: selector

	selector == nil ifTrue: [ ^nil ].
	selector numArgs = 0
		ifTrue: [ ^[ self project configuration perform: selector ] ].
	selector numArgs = 1
		ifTrue: [ ^[:aLoader | self project configuration perform: selector with: aLoader ] ].
	selector numArgs = 2
		ifTrue: [ ^[:aLoader :pkgSpec | self project configuration perform: selector with: aLoader with: pkgSpec ] ].
	^nil
