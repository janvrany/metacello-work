"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: validation
"
validateProject: project version: versionString
	| version spec |
	(self visited includes: project configuration class)
		ifTrue: [ ^ self validationReport ].
	self visited add: project configuration class.
	[ version := project version: versionString ]
		on: Error
		do: [ :ex | 
			self
				recordValidationError: 'Could not resolve version ' , versionString printString , ' due to error: ' , ex description
				versionString: versionString
				callSite: #validateProject:version:
				reasonCode: #cannotResolveVersion.
			^ self validationReport ].
	spec := version spec.
	[ 
	spec blessing value == #baseline
		ifTrue: [ self validateBaselineVersionSpec: spec ]
		ifFalse: [ self validateVersionSpec: spec ] ]
		on: Error
		do: [ :ex | 
			self
				recordValidationError: 'Error composing version ' , version versionString printString , ': ' , ex description
				versionString: version versionString
				callSite: #validateProject:version:
				reasonCode: #versionCompositionError ].
	^ self validationReport
