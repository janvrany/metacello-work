"
notice: Copyright Dale Henrichs 2008-2012\nCopyright Jan Vrany 2012 (port & Smalltalk/X specific code)
category: repository creation
"
extractTypeFromDescription: description

	description == nil ifTrue: [ ^nil ].
	((description beginsWith: '/') or: [ description second = $:]) ifTrue: [ ^'directory' ].
	(description beginsWith: 'dictionary://') ifTrue: [ ^'dictionary' ].
	^'http'