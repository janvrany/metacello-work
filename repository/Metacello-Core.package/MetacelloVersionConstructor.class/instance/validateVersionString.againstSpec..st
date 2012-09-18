"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: validation
"
validateVersionString: versionString againstSpec: versionSpec

	versionString = versionSpec versionString
		ifFalse: [ 
			MetacelloValidationNotification
				signal:
					(MetacelloValidationError
						configurationClass: self configurationClass
						reasonCode: #incorrectVersionString
						callSite: #validateVersionString:againstSpec
						explanation:
							'The version declared in the pragma ', versionString printString , ' does not match the version in the spec '
								, versionSpec versionString printString) ].
