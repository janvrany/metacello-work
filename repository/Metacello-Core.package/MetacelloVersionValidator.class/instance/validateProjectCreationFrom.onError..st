"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: private
"
validateProjectCreationFrom: aConfigurationClass onError: aBlock
	[ ^ aConfigurationClass project ]
		on: Error , MetacelloValidationNotification
		do: [ :ex | 
			(ex isKindOf: MetacelloValidationNotification)
				ifTrue: [ 
					self validationReport add: ex issue.
					ex resume ].
			^ aBlock value: ex ]