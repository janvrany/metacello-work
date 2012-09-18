"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: attributes
"
defaultPlatformAttributes
	| versionString |
	Smalltalk at: #SystemVersion ifPresent: [:cl |
		versionString := cl current version.
		(versionString beginsWith: 'Pharo')
			ifTrue: [ ^ #(#squeakCommon #pharo ) ].
		(versionString beginsWith: 'Squeak')
			ifTrue: [^ #(#squeakCommon #squeak )].
		"see http://code.google.com/p/metacello/issues/detail?id=146"
		(versionString includesSubString: 'Pharo')
			ifTrue: [ ^ #(#squeakCommon #pharo ) ].
		(versionString includesSubString: 'Squeak')
			ifTrue: [^ #(#squeakCommon #squeak )].
		self error: 'Unrecognized version of Squeak/Pharo: ', versionString ].
	^ #(#gemstone )