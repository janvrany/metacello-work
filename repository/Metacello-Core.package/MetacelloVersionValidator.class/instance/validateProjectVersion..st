"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
validateProjectVersion: versionString
	| project |
	project := self
		validateProjectCreationFrom: self configurationClass
		onError: [ :ex | 
			self
				recordValidationError:
					'Error creating project: ' , ex description , ' to reproduce evalutate the following: '''
						, self configurationClass name asString , ' project'''
				callSite: #validateProject
				reasonCode: #projectCreationError.
			^ self validationReport ].
	^ self validateProject: project version: versionString